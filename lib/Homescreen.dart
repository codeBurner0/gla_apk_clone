// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:gla_apk_clone/Screens/AcademicCalendar.dart';
import 'package:gla_apk_clone/Screens/Notifications.dart';
import 'package:gla_apk_clone/Screens/attendance.dart';
import 'package:gla_apk_clone/Screens/busDetails.dart';
import 'package:gla_apk_clone/Screens/club.dart';
import 'package:gla_apk_clone/Screens/fee.dart';
import 'package:gla_apk_clone/Screens/feedback.dart';
import 'package:gla_apk_clone/Screens/heirarchy.dart';
import 'package:gla_apk_clone/Screens/library.dart';
import 'package:gla_apk_clone/Screens/result.dart';
import 'package:gla_apk_clone/Screens/timeTable.dart';
import 'package:gla_apk_clone/Demo.dart';
import 'package:gla_apk_clone/Splash/splash1.dart';
import 'package:marquee/marquee.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => __homescreenState();
}

class __homescreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 20, 112, 52),
          //
          // text and restart icon------------------------------------------
          //
          title: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      "GLA University",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text("Mathura                      ",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(205, 201, 196, 196),
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(
                  width: 125,
                ),
                SizedBox(
                  child: InkWell(
                    onTap: () {
                      runApp(MaterialApp(
                        home: SplashScreen1(),
                      )
                          // MaterialApp(
                          // home: HomeScreen(),
                          // )
                          );
                    },
                    child: Ink.image(
                      image: AssetImage("assets/images/restart.png"),
                      fit: BoxFit.cover,
                      height: 43,
                      width: 43,
                    ),
                  ),
                  height: 35,
                  width: 35,
                )
              ],
            ),
          ),
        ),
        //
        // drawer-----------------------------------------------------------
        //
        drawer: Drawer(
          width: 270,
          child: ListView(children: [
            SizedBox(
                width: 100,
                child: Image(
                  image: AssetImage('assets/drawer/drawerHeader.jpg'),
                  width: 100,
                )),
            //
            // clickable drawer icons
            //
            InkWell(
              onTap: () {
                runApp(MyWidget());
              },
              child: Ink.image(
                image: AssetImage("assets/drawer/profile.jpg"),
                fit: BoxFit.cover,
                height: 43,
                width: 43,
              ),
            ),
            InkWell(
              onTap: () {
                runApp(Attendance());
              },
              child: Ink.image(
                image: AssetImage("assets/drawer/attendance.jpg"),
                fit: BoxFit.cover,
                height: 43,
                width: 43,
              ),
            ),
            InkWell(
              onTap: () {
                runApp(result());
              },
              child: Ink.image(
                image: AssetImage("assets/drawer/result.jpg"),
                fit: BoxFit.cover,
                height: 43,
                width: 43,
              ),
            ),
            InkWell(
              onTap: () {
                runApp(timeTable());
              },
              child: Ink.image(
                image: AssetImage("assets/drawer/timetable.jpg"),
                fit: BoxFit.cover,
                height: 43,
                width: 43,
              ),
            ),
            InkWell(
              onTap: () {
                runApp(library1());
              },
              child: Ink.image(
                image: AssetImage("assets/drawer/library.jpg"),
                fit: BoxFit.cover,
                height: 44,
                width: 44,
              ),
            ),
            InkWell(
              onTap: () {
                runApp(Hierarchy());
              },
              child: Ink.image(
                image: AssetImage("assets/drawer/heirarchy.jpg"),
                fit: BoxFit.cover,
                height: 43,
                width: 43,
              ),
            ),
            InkWell(
              onTap: () {
                runApp(club());
              },
              child: Ink.image(
                image: AssetImage("assets/drawer/club.jpg"),
                fit: BoxFit.cover,
                height: 50,
                width: 50,
              ),
            ),
            InkWell(
              onTap: () {
                runApp(Fee());
              },
              child: Ink.image(
                image: AssetImage("assets/drawer/fee.jpg"),
                fit: BoxFit.cover,
                height: 50,
                width: 50,
              ),
            ),
            InkWell(
              onTap: () {
                runApp(AcademicCalendar());
              },
              child: Ink.image(
                image: AssetImage("assets/drawer/academic.jpg"),
                fit: BoxFit.cover,
                height: 40,
                width: 40,
              ),
            ),
            InkWell(
              onTap: () {
                runApp(MyWidget());
              },
              child: Ink.image(
                image: AssetImage("assets/drawer/outgoing.jpg"),
                fit: BoxFit.cover,
                height: 50,
                width: 50,
              ),
            ),
            InkWell(
              onTap: () {
                runApp(Bus());
              },
              child: Ink.image(
                image: AssetImage("assets/drawer/busDetails.jpg"),
                fit: BoxFit.cover,
                height: 50,
                width: 50,
              ),
            ),

            SizedBox(
              child: TextButton(
                  onPressed: (() {
                    runApp(MyWidget());
                  }),
                  child: Image(
                    image: AssetImage('assets/drawer/exit.jpg'),
                  )),
            ),
            InkWell(
              onTap: () {
                runApp(MyWidget());
              },
              child: Ink.image(
                image: AssetImage("assets/drawer/logout.jpg"),
                fit: BoxFit.cover,
                height: 50,
                width: 50,
              ),
            ),
          ]),
        ),
        body: ListView(
          children: [
            //
            // head slider--------------------------------------------------
            //
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 40,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          runApp(Bus());
                        },
                        child: Ink.image(
                          image: AssetImage("assets/head slider/bus.jpg"),
                          height: 60,
                          width: 130,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          runApp(timeTable());
                        },
                        child: Ink.image(
                          image: AssetImage(
                            "assets/head slider/table.jpg",
                          ),
                          height: 40,
                          width: 130,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          runApp(Attendance());
                        },
                        child: Ink.image(
                          image:
                              AssetImage("assets/head slider/attendance.jpg"),
                          height: 40,
                          width: 130,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          runApp(result());
                        },
                        child: Ink.image(
                          image: AssetImage(
                            "assets/head slider/result.jpg",
                          ),
                          height: 40,
                          width: 110,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          runApp(club());
                        },
                        child: Ink.image(
                          image: AssetImage("assets/head slider/club.jpg"),
                          height: 40,
                          width: 120,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          runApp(library1());
                        },
                        child: Ink.image(
                          image: AssetImage(
                            "assets/head slider/library.jpg",
                          ),
                          height: 40,
                          width: 120,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          runApp(Hierarchy());
                        },
                        child: Ink.image(
                          image: AssetImage("assets/head slider/heirarchy.jpg"),
                          height: 40,
                          width: 139,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          runApp(feedback());
                        },
                        child: Ink.image(
                          image: AssetImage(
                            "assets/head slider/feedback.jpg",
                          ),
                          height: 40,
                          width: 115,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          runApp(AcademicCalendar());
                        },
                        child: Ink.image(
                          image: AssetImage("assets/head slider/academic.jpg"),
                          height: 40,
                          width: 190,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          runApp(Notifications());
                        },
                        child: Ink.image(
                          image: AssetImage(
                            "assets/head slider/notification.jpg",
                          ),
                          height: 40,
                          width: 130,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //
            // header gla logo----------------------------------------------
            //
            Padding(
              padding:
                  const EdgeInsets.only(top: 4, right: 8, left: 8, bottom: 5),
              child: SizedBox(
                child: Image(image: AssetImage("assets/images/gla logo.jpg")),
              ),
            ),
            //
            // performance chart--------------------------------------------
            //
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: SizedBox(
                child: Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.outline,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                  ),

                  //
                  // column widget------------------------------------------
                  //
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 8,
                              right: 15,
                            ),
                            child: SizedBox(
                              height: 50,
                              width: 50,
                              child: ClipOval(
                                  child: Image(
                                      image:
                                          AssetImage("assets/images/pic.png"))),
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Ankit Anand    ",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(212, 126, 126, 125),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Row(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text("B.Tech.-CS(V Sem)",
                                      style: TextStyle(
                                          fontSize: 9,
                                          color: Color.fromARGB(
                                              212, 126, 126, 125),
                                          fontWeight: FontWeight.bold)),
                                  Text("Status",
                                      style: TextStyle(
                                        fontSize: 8,
                                        color: Colors.orange,
                                      )),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      //
                      // line image
                      //
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child:
                            Image(image: AssetImage("assets/images/line.png")),
                      ),
                      //
                      // percentage
                      //
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                                height: 140,
                                width: 110,
                                child: Column(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        runApp(Attendance());
                                      },
                                      child: Ink.image(
                                        image: AssetImage(
                                            'assets/images/percentage.png'),
                                        height: 110,
                                        width: 130,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Attendance",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color.fromARGB(
                                              212, 126, 126, 125),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )),
                            SizedBox(
                                height: 100,
                                width: 100,
                                child: Center(
                                  child: Text(
                                    "Aggregate",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color:
                                            Color.fromARGB(212, 126, 126, 125),
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
                            SizedBox(
                                height: 140,
                                width: 110,
                                child: Column(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        runApp(result());
                                      },
                                      child: Ink.image(
                                        image: AssetImage(
                                            'assets/images/percentage.png'),
                                        height: 110,
                                        width: 130,
                                      ),
                                    ),
                                    // Image(
                                    //     image: AssetImage(
                                    //         'assets/images/percentage.png')),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "percentage",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color.fromARGB(
                                              212, 126, 126, 125),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                      //
                      // notification---------------------------------------
                      //
                      Center(
                        child: Text(
                          "Notification message",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      //
                      // running text---------------------------------------
                      //
                      Container(
                        height: 30,
                        width: 350,
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: buildAnimatedText(
                            'Red,Green,Yellow,Blue,Black,Magenta,Pink,Orange,White,Red,Green,Yellow,Blue,Black,Magenta,Pink,Orange,White'),
                      ),
                    ],
                  ),
                ),
                height: 260,
                width: 600,
              ),
            ),
            //
            // timetable screen---------------------------------------------
            //
            Padding(
              padding:
                  const EdgeInsets.only(top: 0, right: 5, left: 5, bottom: 5),
              child: SizedBox(
                child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Image(
                        image: AssetImage("assets/images/timetable.png"))),
                width: 800,
                height: 130,
              ),
            ),
            //
            //quick actions------------------------------------------------------
            //
            Padding(
              padding:
                  const EdgeInsets.only(top: 0, right: 5, left: 5, bottom: 5),
              child: SizedBox(
                child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Column(
                      children: [
                        Image(
                            image:
                                AssetImage("assets/images/quickActions.png")),
                        //
                        // actions------------------------------------------------------
                        //
                        Row(
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            InkWell(
                              onTap: () {
                                runApp(MyWidget());
                              },
                              child: Ink.image(
                                image: AssetImage("assets/actions/profile.jpg"),
                                fit: BoxFit.cover,
                                height: 75,
                                width: 75,
                              ),
                            ),
                            SizedBox(
                              width: 35,
                            ),
                            InkWell(
                              onTap: () {
                                runApp(Attendance());
                              },
                              child: Ink.image(
                                image:
                                    AssetImage("assets/actions/attendance.png"),
                                fit: BoxFit.cover,
                                height: 75,
                                width: 75,
                              ),
                            ),
                            SizedBox(
                              width: 35,
                            ),
                            InkWell(
                              onTap: () {
                                runApp(result());
                              },
                              child: Ink.image(
                                image: AssetImage("assets/actions/result.jpg"),
                                fit: BoxFit.cover,
                                height: 60,
                                width: 60,
                              ),
                            ),
                          ],
                        ),
                        // another actions----------------------------------
                        Row(
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            InkWell(
                              onTap: () {
                                runApp(timeTable());
                              },
                              child: Ink.image(
                                image:
                                    AssetImage("assets/actions/timetable.jpg"),
                                fit: BoxFit.cover,
                                height: 75,
                                width: 75,
                              ),
                            ),
                            SizedBox(
                              width: 39,
                            ),
                            InkWell(
                              onTap: () {
                                runApp(library1());
                              },
                              child: Ink.image(
                                image: AssetImage("assets/actions/library.jpg"),
                                fit: BoxFit.cover,
                                height: 61,
                                width: 61,
                              ),
                            ),
                            SizedBox(
                              width: 37,
                            ),
                            InkWell(
                              onTap: () {
                                runApp(Hierarchy());
                              },
                              child: Ink.image(
                                image:
                                    AssetImage("assets/actions/heirarchy.jpg"),
                                fit: BoxFit.cover,
                                height: 72,
                                width: 72,
                              ),
                            ),
                          ],
                        ),
                        // another actions----------------------------------
                        Row(
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            InkWell(
                              onTap: () {
                                runApp(Fee());
                              },
                              child: Ink.image(
                                image: AssetImage("assets/actions/fee.jpg"),
                                fit: BoxFit.cover,
                                height: 70,
                                width: 70,
                              ),
                            ),
                            SizedBox(
                              width: 39,
                            ),
                            InkWell(
                              onTap: () {
                                runApp(AcademicCalendar());
                              },
                              child: Ink.image(
                                image:
                                    AssetImage("assets/actions/academic.jpg"),
                                fit: BoxFit.cover,
                                height: 70,
                                width: 70,
                              ),
                            ),
                            SizedBox(
                              width: 37,
                            ),
                            InkWell(
                              onTap: () {
                                runApp(Notifications());
                              },
                              child: Ink.image(
                                image: AssetImage("assets/actions/noti.jpg"),
                                fit: BoxFit.cover,
                                height: 70,
                                width: 70,
                              ),
                            ),
                          ],
                        ),
                        // another actions----------------------------------
                        Row(
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            InkWell(
                              onTap: () {
                                runApp(feedback());
                              },
                              child: Ink.image(
                                image:
                                    AssetImage("assets/actions/feedback.jpg"),
                                fit: BoxFit.cover,
                                height: 70,
                                width: 70,
                              ),
                            ),
                            SizedBox(
                              width: 39,
                            ),
                            InkWell(
                              onTap: () {
                                runApp(Bus());
                              },
                              child: Ink.image(
                                image: AssetImage("assets/actions/bus.jpg"),
                                fit: BoxFit.cover,
                                height: 70,
                                width: 70,
                              ),
                            ),
                            SizedBox(
                              width: 35,
                            ),
                            SizedBox(
                              // child:
                              // ink.image(
                              // image: AssetImage(
                              //     "assets/actions/heirarchy.jpg"),
                              // fit: BoxFit.cover,
                              height: 60,
                              width: 60,
                            ),
                          ],
                        ),
                      ],
                    )),
                width: 800,
                height: 350,
              ),
            ),
            //
            // lower gla logo----------------------------------------------
            //
            Padding(
              padding:
                  const EdgeInsets.only(top: 0, right: 8, left: 8, bottom: 2),
              child: SizedBox(
                child: Image(image: AssetImage("assets/images/gla logo.jpg")),
              ),
            ),
          ],
        ));
  }

  Widget buildAnimatedText(String text) => Marquee(
        text: text,
        style: TextStyle(
          fontSize: 18,
          color: Color.fromARGB(255, 53, 142, 54),
          fontWeight: FontWeight.bold,
        ),
        blankSpace: 200,
      ); // Marquee
}
