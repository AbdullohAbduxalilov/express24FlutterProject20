import 'dart:ui';
import 'package:flutter/material.dart';
import 'models/home.dart';
import 'models/myOrders.dart';
import 'models/onGeneratePage1.dart';
import 'models/onGeneratePage2.dart';
import 'models/onGeneratePage3.dart';
import 'models/profile.dart';
import 'models/search.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (RouteSettings settings) {
        List<String> path = settings.name.toString().split("/");
        if (path[1] == "OngeneratePage1") {
          return MaterialPageRoute(
            builder: (context) => OngeneratePage1(
              int.parse(path[2]),
            ),
          );
        } else if (path[1] == "OngeneratePage2") {
          return MaterialPageRoute(
            builder: (context) => OngeneratePage2(
              int.parse(path[2]),
            ),
          );
        } else if (path[1] == "OngeneratePage3") {
          return MaterialPageRoute(
            builder: (context) => OngeneratePage3(
              int.parse(path[2]),
            ),
          );
        }
      },
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int _selectedIndex = 0;
  String? inputFieldString;
  TabController? tabController;
  List<Widget>? bottomBarBodilar;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(vsync: this, length: 2);
    bottomBarBodilar = [
      //home
      Home(tabController),
      //search
      SearchBarim(),
      //my orders
      MyOrders(tabController),
      //profile
      Profile(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    List<AppBar> applist = [
      //home
      AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.yellow[600],
        title: Container(
          child: TextButton(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Delivery address",
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.black,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      size: 30.0,
                      color: Colors.black,
                    ),
                  ],
                ),
                Text(
                  "Yunusobod",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            onPressed: () {},
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40.0),
          child: Material(
            child: Container(
              height: 45.0,
              child: tabBar1(),
            ),
          ),
        ),
      ),
      //search
      AppBar(
        backgroundColor: Colors.yellow[600],
        title: Center(
          child: Text(
            "Search",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      //my orders
      AppBar(
        centerTitle: true,
        backgroundColor: Colors.yellow[600],
        toolbarHeight: 50,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: Material(
            child: Container(
              color: Colors.yellow[600],
              child: tabBar2(),
            ),
          ),
        ),
      ),
      //profile
      AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.yellow,
      ),
    ];
    return Scaffold(
      appBar: applist[_selectedIndex],
      body: bottomBarBodilar![_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            ),
            label: 'My orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline_rounded,
              color: Colors.black,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }

  TabBar tabBar1() {
    return TabBar(
      isScrollable: false,
      controller: tabController,
      indicatorColor: Colors.amber,
      indicatorWeight: 4.0,
      unselectedLabelStyle: TextStyle(
        color: Colors.grey[200],
      ),
      tabs: [
        Container(
          child: Text(
            "Restaurants",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black,
            ),
          ),
        ),
        Container(
          child: Text(
            "Market",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }

  TabBar tabBar2() {
    return TabBar(
      isScrollable: false,
      controller: tabController,
      indicatorColor: Colors.black,
      indicatorWeight: 4.0,
      unselectedLabelStyle: TextStyle(
        color: Colors.grey[200],
      ),
      tabs: [
        Container(
          padding: EdgeInsets.only(bottom: 10.0),
          child: Text(
            "Order history",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 10.0),
          child: Text(
            "Current orders",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
