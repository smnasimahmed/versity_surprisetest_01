// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  int _index = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: Color.fromARGB(255, 244, 239, 250)),
        home: Scaffold(
          bottomNavigationBar: Container(
            color: Color.fromARGB(255, 104, 49, 155),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
              child: GNav(
                textStyle: TextStyle(color: Colors.white),
                backgroundColor: Color.fromARGB(255, 104, 49, 155),
                tabBackgroundColor: Colors.white38,
                gap: 8,
                padding: EdgeInsets.all(16),
                tabs: [
                  GButton(
                    icon: Icons.home_outlined,
                    iconColor: Colors.white,
                    iconActiveColor: Colors.white,
                    text: "Home",
                    onPressed: () {
                      Navigator.pushNamed(context, "/homepage");
                    },
                  ),
                  GButton(
                    icon: Icons.navigation_outlined,
                    iconColor: Colors.white,
                    iconActiveColor: Colors.white,
                    text: "Destination",
                  ),
                  GButton(
                    icon: Icons.access_time,
                    iconColor: Colors.white,
                    iconActiveColor: Colors.white,
                    text: "Boadring Time",
                  ),
                  GButton(
                    icon: Icons.person_2_outlined,
                    iconColor: Colors.white,
                    iconActiveColor: Colors.white,
                    text: "Profile",
                  ),
                ],
                selectedIndex: 1,
                onTabChange: (index) {
                  setState(() {
                    _index = index;
                  });
                },
              ),
            ),
          ),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            flexibleSpace: Image(
              image: AssetImage("lib/image/locat_appbar.jpg"),
              fit: BoxFit.cover,
            ),
            leading: Padding(
              padding: EdgeInsets.only(left: 40),
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 40),
                child: Icon(
                  Icons.more_horiz_rounded,
                  color: Colors.white,
                ),
              )
            ],
          ),
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.scaleDown,
                  image: AssetImage("lib/image/locat_page.jpg"),
                  alignment: Alignment.topCenter),
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(54),
                  child: Row(
                    children: [
                      Text("Location 1",
                          style: TextStyle(
                              color: Color.fromARGB(255, 104, 49, 155),
                              fontSize: 22)),
                      SizedBox(
                        width: 25,
                      ),
                      Icon(
                        Icons.swap_calls_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Text("Location 2",
                          style: TextStyle(
                              color: Color.fromARGB(255, 104, 49, 155),
                              fontSize: 22)),
                    ],
                  ),
                ),
                Center(
                    child: Container(
                  height: 170,
                  width: 330,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Row(children: [
                    Expanded(
                      flex: 10,
                      child: SizedBox(
                          height: double.infinity,
                          width: 30,
                          child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                        backgroundColor:
                                            Color.fromARGB(255, 31, 204, 138),
                                        foregroundColor: Colors.white,
                                        child: Icon(Icons.navigation_rounded)),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Location 1",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 104, 49, 155),
                                                fontSize: 20)),
                                        Text(
                                          "Date",
                                          style:
                                              TextStyle(color: Colors.black12),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    CircleAvatar(
                                        backgroundColor:
                                            Color.fromARGB(255, 104, 49, 155),
                                        foregroundColor: Colors.white,
                                        child: Icon(Icons.location_on)),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Location 2",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 104, 49, 155),
                                                fontSize: 20)),
                                        Text(
                                          "Date",
                                          style:
                                              TextStyle(color: Colors.black26),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )),
                    ),
                    Expanded(
                      flex: 7,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 30, left: 10, bottom: 20),
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("Travel Time: ",
                                      style: TextStyle(
                                          color: Colors.black26, fontSize: 10)),
                                  Text("30min",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 31, 204, 138),
                                          fontSize: 10)),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Departure on: ",
                                      style: TextStyle(
                                          color: Colors.black26, fontSize: 10)),
                                  Text("15min",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 31, 204, 138),
                                          fontSize: 10)),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Price: ",
                                      style: TextStyle(
                                          color: Colors.black26, fontSize: 10)),
                                  Text("800 BDT",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 31, 204, 138),
                                          fontSize: 18)),
                                ],
                              ),
                              Container(
                                height: 40,
                                width: 110,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 104, 49, 155),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Center(
                                  child: Text(
                                    "BUY TICKET",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),
                )),
                SizedBox(
                  height: 30,
                ),
                Center(
                    child: Container(
                  height: 170,
                  width: 330,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Row(children: [
                    Expanded(
                      flex: 10,
                      child: SizedBox(
                          height: double.infinity,
                          width: 30,
                          child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                        backgroundColor:
                                            Color.fromARGB(255, 31, 204, 138),
                                        foregroundColor: Colors.white,
                                        child: Icon(Icons.navigation_rounded)),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Location 1",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 104, 49, 155),
                                                fontSize: 20)),
                                        Text(
                                          "Date",
                                          style:
                                              TextStyle(color: Colors.black12),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    CircleAvatar(
                                        backgroundColor:
                                            Color.fromARGB(255, 104, 49, 155),
                                        foregroundColor: Colors.white,
                                        child: Icon(Icons.location_on)),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Location 2",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 104, 49, 155),
                                                fontSize: 20)),
                                        Text(
                                          "Date",
                                          style:
                                              TextStyle(color: Colors.black26),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )),
                    ),
                    Expanded(
                      flex: 7,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 30, left: 10, bottom: 20),
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("Travel Time: ",
                                      style: TextStyle(
                                          color: Colors.black26, fontSize: 10)),
                                  Text("20min",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 31, 204, 138),
                                          fontSize: 10)),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Departure on: ",
                                      style: TextStyle(
                                          color: Colors.black26, fontSize: 10)),
                                  Text("25min",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 31, 204, 138),
                                          fontSize: 10)),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Price: ",
                                      style: TextStyle(
                                          color: Colors.black26, fontSize: 10)),
                                  Text("1200 BDT",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 31, 204, 138),
                                          fontSize: 18)),
                                ],
                              ),
                              Container(
                                height: 40,
                                width: 110,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 104, 49, 155),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Center(
                                  child: Text(
                                    "BUY TICKET",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),
                )),
              ],
            ),
          ),
        ));
  }
}
