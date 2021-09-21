import 'dart:convert';

import 'package:flutter/material.dart';

import '../strings.dart';




class Home extends StatefulWidget {
  final TabController? tabController;

  Home(this.tabController);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var allCars;
  List<Color> textRanglari = [
    Colors.red,
    Colors.red,
    Colors.red,
    Colors.red,
    Colors.red,
    Colors.red,
    Colors.red,
    Colors.red,
    Colors.red,
    Colors.red,
  ];
  List<Color> likeRanglari = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
  ];
  List<Color> starRanglari = [
    Colors.red,
    Colors.red,
    Colors.red,
    Colors.red,
    Colors.red,
    Colors.red,
    Colors.red,
    Colors.red,
    Colors.red,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: widget.tabController,
      children: [
        ListView.separated(
          itemBuilder: (context, index) {
            if (index == 0) {
              return Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: 130.0,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.all(0),
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, "/OngeneratePage1/$index");
                              },
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      child: Text("Donar"),
                                      margin: EdgeInsets.only(
                                          left: 20.0, bottom: 10.0),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        "http://mealnj.com/wp-content/themes/meal/images/slide-03.jpg"),
                                    fit: BoxFit.fill,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                  color: Colors.red,
                                ),
                                margin: EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 5.0),
                                width: 190.0,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    //ListVeiw.builder
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: 120.0,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.all(0),
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    if (textRanglari[index] == Colors.green) {
                                      setState(() {
                                        textRanglari[index] = Colors.red;
                                      });
                                    } else {
                                      setState(() {
                                        textRanglari[index] = Colors.green;
                                      });
                                    }
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            "https://www.photorecept.ru/wp-content/uploads/2018/11/burger-s-rybnoj-kotletoj-i-rukkoloj-400x400.jpeg"),
                                        fit: BoxFit.fill,
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10.0),
                                      ),
                                      color: Colors.red,
                                    ),
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 5.0),
                                    height: 80.0,
                                    width: 95.0,
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "Text",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                      color: textRanglari[index],
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                    // Free Delivery Word
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Text(
                            "Free Delivery",
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    //ListView.builder
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: 260.0,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.all(0),
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, "/OngeneratePage2/$index");
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          "https://www.ugabox.com/images/shop/march-2017/event-services/event-services-party-music-bridal-tents-food-supply-flowers-decoration-venue-services-13.jpg",
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10.0),
                                      ),
                                      color: Colors.red,
                                    ),
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 5.0),
                                    width: 150.0,
                                    height: 150.0,
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Shashlik",
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "\"Jazz\"",
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        "Express dokon ",
                                        style: TextStyle(fontSize: 16.0),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        "23500",
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  margin: EdgeInsets.only(left: 8.0),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Text(
                            "Restaurants",
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              );
            }
            return Text("");
          },
          padding: EdgeInsets.all(0),
          separatorBuilder: (context, index) {
            return Container(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/OngeneratePage3/$index");
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 12.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://www.xdream-promotion.ch/fileadmin/Redaktion/Bilder/Headerbilder/neu/fleisch_2300x1200.jpg",
                          ),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        color: Colors.redAccent,
                      ),
                      height: 200.0,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 200.0,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                          left: 10.0, bottom: 10.0),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 15.0, vertical: 5.0),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            "https://sun1-85.userapi.com/s/v1/if2/UB5KjELveSX1YW3TPa9fyUsTLWBf4G2rrBG4qP-eWrX5itXeoDb1FcBKxKNBZDGE4c8zOj9emF1hbW6L6kRQ1HqR.jpg?size=400x0&quality=96&crop=1,0,465,465&ava=1",
                                          ),
                                          fit: BoxFit.fill,
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10.0),
                                        ),
                                      ),
                                      height: 100.0,
                                      width: 100.0,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 200.0,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        if (likeRanglari[index] ==
                                            Colors.white) {
                                          setState(() {
                                            likeRanglari[index] = Colors.green;
                                          });
                                        } else {
                                          setState(() {
                                            setState(() {
                                              likeRanglari[index] =
                                                  Colors.white;
                                            });
                                          });
                                        }
                                      },
                                      child: Container(
                                        child: Icon(
                                          Icons.favorite,
                                          size: 50.0,
                                          color: likeRanglari[index],
                                        ),
                                        margin: EdgeInsets.only(top: 20.0),
                                      ),
                                    ),
                                    Container(
                                      child: OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                          backgroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(30),
                                            ),
                                          ),
                                        ),
                                        onPressed: () {
                                          if (starRanglari[index] ==
                                              Colors.red) {
                                            setState(() {
                                              starRanglari[index] =
                                                  Colors.green;
                                            });
                                          } else {
                                            setState(() {
                                              starRanglari[index] = Colors.red;
                                            });
                                          }
                                        },
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: starRanglari[index],
                                              size: 25.0,
                                            ),
                                            SizedBox(
                                              width: 3.0,
                                            ),
                                            Text(
                                              "4.5",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 17.0),
                                            ),
                                          ],
                                        ),
                                      ),
                                      margin: EdgeInsets.only(
                                          bottom: 10.0, right: 10.0),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "LOOOK",
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Fast Food *New* Coca-Cola kombo",
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Icon(Icons.delivery_dining),
                                  Text(
                                    " = 9600 soum",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
          itemCount: 10,
        ),
        ListView.separated(
          itemBuilder: (context, index) {
            if (index == 0) {
              return Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: 130.0,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.all(0),
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, "/OngeneratePage1/$index");
                              },
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      child: Text(
                                        "Donar",
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                      margin: EdgeInsets.only(
                                          left: 20.0, bottom: 10.0),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        "http://mealnj.com/wp-content/themes/meal/images/slide-03.jpg"),
                                    fit: BoxFit.fill,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                  color: Colors.red,
                                ),
                                margin: EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 5.0),
                                width: 190.0,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    //ListVeiw.builder
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: 120.0,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.all(0),
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    if (textRanglari[index] == Colors.green) {
                                      setState(() {
                                        textRanglari[index] = Colors.red;
                                      });
                                    } else {
                                      setState(() {
                                        textRanglari[index] = Colors.green;
                                      });
                                    }
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            "https://www.photorecept.ru/wp-content/uploads/2018/11/burger-s-rybnoj-kotletoj-i-rukkoloj-400x400.jpeg"),
                                        fit: BoxFit.fill,
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10.0),
                                      ),
                                      color: Colors.red,
                                    ),
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 5.0),
                                    height: 80.0,
                                    width: 95.0,
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "Text",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                      color: textRanglari[index],
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                    // Free Delivery Word
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Text(
                            "Free Delivery",
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    //ListView.builder
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: 260.0,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.all(0),
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, "/OngeneratePage2/$index");
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          "https://www.ugabox.com/images/shop/march-2017/event-services/event-services-party-music-bridal-tents-food-supply-flowers-decoration-venue-services-13.jpg",
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10.0),
                                      ),
                                      color: Colors.red,
                                    ),
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 5.0),
                                    width: 150.0,
                                    height: 150.0,
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Shashlik",
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "\"Jazz\"",
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        "Express dokon ",
                                        style: TextStyle(fontSize: 16.0),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        "23500",
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  margin: EdgeInsets.only(left: 8.0),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Text(
                            "Restaurants",
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              );
            }
            return Text("");
          },
          padding: EdgeInsets.all(0),
          separatorBuilder: (context, index) {
            return Container(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/OngeneratePage3/$index");
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 12.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://www.xdream-promotion.ch/fileadmin/Redaktion/Bilder/Headerbilder/neu/fleisch_2300x1200.jpg",
                          ),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        color: Colors.redAccent,
                      ),
                      height: 200.0,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 200.0,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                          left: 10.0, bottom: 10.0),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 15.0, vertical: 5.0),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            "https://sun1-85.userapi.com/s/v1/if2/UB5KjELveSX1YW3TPa9fyUsTLWBf4G2rrBG4qP-eWrX5itXeoDb1FcBKxKNBZDGE4c8zOj9emF1hbW6L6kRQ1HqR.jpg?size=400x0&quality=96&crop=1,0,465,465&ava=1",
                                          ),
                                          fit: BoxFit.fill,
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10.0),
                                        ),
                                      ),
                                      height: 100.0,
                                      width: 100.0,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 200.0,
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        if (likeRanglari[index] ==
                                            Colors.white) {
                                          setState(() {
                                            likeRanglari[index] = Colors.green;
                                          });
                                        } else {
                                          setState(() {
                                            setState(() {
                                              likeRanglari[index] =
                                                  Colors.white;
                                            });
                                          });
                                        }
                                      },
                                      child: Container(
                                        child: Icon(
                                          Icons.favorite,
                                          size: 50.0,
                                          color: likeRanglari[index],
                                        ),
                                        margin: EdgeInsets.only(top: 20.0),
                                      ),
                                    ),
                                    Container(
                                      child: OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                          backgroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(30),
                                            ),
                                          ),
                                        ),
                                        onPressed: () {
                                          if (starRanglari[index] ==
                                              Colors.red) {
                                            setState(() {
                                              starRanglari[index] =
                                                  Colors.green;
                                            });
                                          } else {
                                            setState(() {
                                              starRanglari[index] = Colors.red;
                                            });
                                          }
                                        },
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: starRanglari[index],
                                              size: 25.0,
                                            ),
                                            SizedBox(
                                              width: 3.0,
                                            ),
                                            Text(
                                              "4.5",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 17.0),
                                            ),
                                          ],
                                        ),
                                      ),
                                      margin: EdgeInsets.only(
                                          bottom: 10.0, right: 10.0),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "LOOOK",
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Fast Food *New* Coca-Cola kombo",
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Icon(Icons.delivery_dining),
                                  Text(
                                    " = 9600 soum",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
          itemCount: 10,
        ),

      ],
    );
  }
  // datalarniOlibKel() async {
  //   // await Future.delayed(Duration(seconds: 5));
  //   var jsonData =
  //   await DefaultAssetBundle.of(context).loadString("assets/data/car.json");
  //   // Json to List Decode -> Manual
  //   List<Datalar> taomListi = (json.decode(jsonData) as List)
  //       .map((e) => Datalar.fromJson(e))
  //       .toList();
  //
  //   for (var i = 0; i < taomListi.length; i++) {
  //     print("Model: ${taomListi[i].taomTuri}");
  //   }
  //
  //   return taomListi;
  // }

}
