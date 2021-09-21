import 'package:bek/models/profileCashBack.dart';
import 'package:bek/models/profileEditPage.dart';
import 'package:bek/models/profileExitPage.dart';
import 'package:bek/models/profilePaymentsCards.dart';
import 'package:bek/models/profileSettings.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  int? index;

  Profile({this.index, Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: ListView(
        // Columnni ornigami ListView.separated qib kor
        children: [
          Container(
            height: 250.0,
            color: Colors.yellow,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "Profile",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Icon(
                    Icons.account_circle,
                    size: 100.0,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Text(
                    "Abdulloh Abduxalilov",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Center(
                  child: Text(
                    "+998 (97) 737 44 83",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: Container(
              height: 70.0,
              child: Row(
                children: [
                  Icon(
                    Icons.account_balance_wallet,
                    size: 30.0,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    "Current balance: 0 points",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 15.0, bottom: 15.0),
            child: Text(
              "General Information",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileEditPage(),),);
              },
              leading: Icon(Icons.edit),
              title: Text('Abdulloh Abduxalilov'),
              subtitle: Text("Change account information"),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilPaymentsCards(),),);
              },
              leading: Icon(Icons.payment),
              title: Text('Payment cards'),
              subtitle: Text("Add payment card"),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileCashBack(),),);
              },
              leading: Icon(Icons.cached_sharp),
              title: Text('Cashback'),
              subtitle: Text("Activate the cashback"),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileSettings(),),);
              },
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              subtitle: Text("App language"),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileExitPage(),),);
              },
              leading: Icon(Icons.exit_to_app),
              title: Text('Exit'),
            ),
          ),
          Container(
            child: Column(
              children: [
                Text(
                  "Support service",
                ),
                Text(
                  "+99871 202-65-00",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
