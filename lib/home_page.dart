// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
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
                  ),
                  GButton(
                    icon: Icons.navigation_outlined,
                    iconColor: Colors.white,
                    iconActiveColor: Colors.white,
                    text: "Destination",
                    onPressed: () {
                      Navigator.pushNamed(context, "/locationpage");
                    },
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
                selectedIndex: 0,
                onTabChange: (index) {
                  setState(() {
                    _index = index;
                  });
                },
              ),
            ),
          ),
          appBar: AppBar(
            flexibleSpace: Image(
              image: AssetImage("lib/image/locat_appbar.jpg"),
              fit: BoxFit.cover,
            ),
            leading: Padding(
              padding: EdgeInsets.only(left: 30),
              child: Icon(
                Icons.more_horiz_rounded,
                color: Colors.white,
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: CircleAvatar(
                    child: Icon(Icons.person_outline_outlined,
                        color: Color.fromARGB(255, 104, 49, 155))),
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
                SizedBox(
                  height: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: Text(
                        "Hi Nasim Farsid",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: Text(
                        "Bus",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 20,
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
                          flex: 2,
                          child: Container(
                              height: double.infinity,
                              width: 30,
                              child: Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      children: [
                                        CircleAvatar(
                                            backgroundColor: Color.fromARGB(
                                                255, 31, 204, 138),
                                            foregroundColor: Colors.white,
                                            child:
                                                Icon(Icons.navigation_rounded)),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "FROM",
                                              style: TextStyle(
                                                  color: Colors.black12),
                                            ),
                                            Text("Location 1",
                                                style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 104, 49, 155),
                                                    fontSize: 20))
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        CircleAvatar(
                                            backgroundColor: Color.fromARGB(
                                                255, 104, 49, 155),
                                            foregroundColor: Colors.white,
                                            child: Icon(Icons.location_on)),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "TO",
                                              style: TextStyle(
                                                  color: Colors.black12),
                                            ),
                                            Text("Location 2",
                                                style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 104, 49, 155),
                                                    fontSize: 20))
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            width: 10,
                            child: CircleAvatar(
                              child: Icon(Icons.swap_calls_rounded),
                              radius: 30,
                              foregroundColor: Colors.white,
                              backgroundColor:
                                  Color.fromARGB(255, 104, 49, 155),
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
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20, top: 20, bottom: 20),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                    height: double.infinity,
                                    width: 45,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Row(
                                          children: [
                                            CircleAvatar(
                                                backgroundColor: Color.fromARGB(
                                                    255, 31, 204, 138),
                                                foregroundColor: Colors.white,
                                                child: Icon(
                                                    Icons.navigation_rounded)),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Passenger",
                                                  style: TextStyle(
                                                      color: Colors.black12),
                                                ),
                                                Row(
                                                  children: [
                                                    CircleAvatar(
                                                        radius: 10,
                                                        backgroundColor:
                                                            Color.fromARGB(255,
                                                                31, 204, 138),
                                                        foregroundColor:
                                                            Colors.white,
                                                        child: Icon(
                                                          Icons.remove,
                                                          size: 15,
                                                        )),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text(
                                                      "01",
                                                      style: TextStyle(
                                                          fontSize: 20),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    CircleAvatar(
                                                        radius: 10,
                                                        backgroundColor:
                                                            Color.fromARGB(255,
                                                                31, 204, 138),
                                                        foregroundColor:
                                                            Colors.white,
                                                        child: Icon(
                                                          Icons.add,
                                                          size: 15,
                                                        )),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            CircleAvatar(
                                                backgroundColor: Color.fromARGB(
                                                    255, 104, 49, 155),
                                                foregroundColor: Colors.white,
                                                child: Icon(Icons.location_on)),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "DEPART",
                                                  style: TextStyle(
                                                      color: Colors.black12),
                                                ),
                                                Text("Sun 3 Jun 2021",
                                                    style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 104, 49, 155),
                                                        fontSize: 20))
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    )),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  alignment: Alignment.topLeft,
                                  width: 20,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "TYPE",
                                        style: TextStyle(color: Colors.black12),
                                      ),
                                      Text("Type",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 104, 49, 155),
                                              fontSize: 20))
                                    ],
                                  ),
                                ),
                              ),
                            ]),
                      ),
                    )),
                    SizedBox(
                      height: 35,
                    ),
                    Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "/locationpage");
                        },
                        child: Container(
                          height: 70,
                          width: 260,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 104, 49, 155),
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(
                            child: Text(
                              "SEARCH",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
