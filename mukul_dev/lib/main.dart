// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mukul ML',
      theme: ThemeData(
          // primarySwatch: Colors.blue,
          ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavigationBar(
      //     backgroundColor: Colors.black,
      //     fixedColor: Colors.white,
      //     unselectedItemColor: Colors.white,
      //     items: [
      //       const BottomNavigationBarItem(
      //           title: Text("Home"), icon: Icon(Icons.home_rounded)),
      //       const BottomNavigationBarItem(
      //           title: Text("Smile"), icon: Icon(Icons.emoji_emotions)),
      //       BottomNavigationBarItem(
      //           title: const Text("Downloads"),
      //           icon: Stack(
      //             children: [
      //               const Icon(Icons.file_download),
      //               Padding(
      //                 padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
      //                 child: Container(
      //                   decoration: const BoxDecoration(
      //                     shape: BoxShape.circle,
      //                     color: Colors.red,
      //                   ),
      //                   child: const Padding(
      //                     padding: EdgeInsets.all(5.0),
      //                     child: Text(
      //                       "5",
      //                       style: TextStyle(
      //                           color: Colors.white,
      //                           fontSize: 10,
      //                           fontWeight: FontWeight.bold),
      //                     ),
      //                   ),
      //                 ),
      //               )
      //             ],
      //           ))
      //     ]),
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        actions: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Image.asset(
                    "assets/logo.png",
                    height: 30,
                  ),
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: const Icon(
                        Icons.emoji_emotions,
                        size: 25,
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 20),
                    //   child: Image.asset(
                    //     "assets/profile.png",
                    //     height: 30,
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 550,
              child: Stack(
                children: [
                  Container(
                    height: 550,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        color: Colors.black12,
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/cover2.jpeg",
                            ),
                            fit: BoxFit.cover)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                    ),
                  ),
                  Container(
                    // height: 350.0,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        gradient: LinearGradient(
                            begin: FractionalOffset.topCenter,
                            end: FractionalOffset.bottomCenter,
                            colors: [
                              Colors.black.withOpacity(0.1),
                              Colors.black,
                            ],
                            stops: const [
                              0.0,
                              1.0
                            ])),
                  ),
                  SafeArea(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "   Projects          Services          About ",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          // Icon(
                          //   Icons.arrow_drop_down,
                          //   color: Colors.white,
                          // )
                        ],
                      ),
                      Column(
                        children: const [
                          Padding(
                            padding:
                                EdgeInsets.only(bottom: 15, left: 15, top: 10),
                            child: Text(
                              "Mukul ML",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            "   Dev  Flutter  Swift  Ionic  Android  iOS  Web",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          //   children: [
                          //     Column(
                          //       children: const [
                          //         Icon(
                          //           Icons.add,
                          //           color: Colors.white,
                          //           size: 34,
                          //         ),
                          //         Text(
                          //           "My List",
                          //           style: TextStyle(
                          //               color: Colors.white, fontSize: 10),
                          //         ),
                          //       ],
                          //     ),
                          //     MaterialButton(
                          //       onPressed: () {},
                          //       color: Colors.white,
                          //       child: Row(
                          //         children: const [
                          //           Icon(
                          //             Icons.play_arrow,
                          //             color: Colors.black,
                          //             size: 30,
                          //           ),
                          //           Text("Play"),
                          //         ],
                          //       ),
                          //     ),
                          //     Column(
                          //       children: const [
                          //         Icon(
                          //           Icons.add,
                          //           color: Colors.white,
                          //           size: 34,
                          //         ),
                          //         Text(
                          //           "My List",
                          //           style: TextStyle(
                          //               color: Colors.white, fontSize: 10),
                          //         ),
                          //       ],
                          //     )
                          //   ],
                          // )
                        ],
                      ),
                    ],
                  )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 15, left: 15, top: 10),
                    child: Text(
                      "Mobile App Projects",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _project("assets/ss.jpeg"),
                        _project("assets/ss.jpeg"),
                        _project("assets/ss.jpeg"),
                        _project("assets/ss.jpeg")
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

_project(String? img) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Stack(
      children: [
        Container(
          width: 140,
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage("$img"), fit: BoxFit.cover)),
        ),
        InkWell(
          onTap: () async {
            const url =
                "https://play.google.com/store/apps/details?id=com.mukul.signal_sticker";
            if (await canLaunch(url))
              await launch(url);
            else
              // can't launch url, there is some error
              throw "Could not launch $url";
          },
          child: Container(
            width: 140,
            height: 200,
            decoration: BoxDecoration(
                color: Colors.black,
                gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(0.2),
                      Colors.black.withOpacity(0.6),
                    ],
                    stops: const [
                      0.0,
                      1.0
                    ])),
            child: Center(
              child: Icon(
                Icons.open_in_browser,
                color: Colors.white,
                size: 34,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
