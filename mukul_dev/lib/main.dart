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
                  child: Image.network(
                    "https://mukulml96.github.io/images/logo.png",
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
                            image: NetworkImage(
                              "https://firebasestorage.googleapis.com/v0/b/signal-stickers-mukul.appspot.com/o/Portfolio%2Fcover2.jpeg?alt=media&token=a4bb71b7-0e09-4ccd-a728-1a70f1a38ade",
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
                            "   Dev • Flutter • Swift • Ionic • Android • iOS • Web",
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
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: const [
                  Text(
                    "About\n",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Experienced Mobile App developer and an Artist with a demonstrated history of working in IT and design industries. Skilled in Software Coding / Frontend Development with Flutter, Product Design, User Experience (UX), and Logo Design.",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            Center(
              child: Padding(
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
                          _project(
                              "https://firebasestorage.googleapis.com/v0/b/signal-stickers-mukul.appspot.com/o/Portfolio%2Fss.jpeg?alt=media&token=a3779dc9-bd36-4ff5-a104-30c5b2dc2b99"),
                          _project(
                              "https://firebasestorage.googleapis.com/v0/b/signal-stickers-mukul.appspot.com/o/Portfolio%2F807.jpg?alt=media&token=268f69c3-fcdb-466b-8525-bd37c1a05007"),
                          _project(
                              "https://firebasestorage.googleapis.com/v0/b/signal-stickers-mukul.appspot.com/o/Portfolio%2FLA-cover.jpg?alt=media&token=fd8107a6-3801-4a07-96bb-2df4cb4f75d6"),
                          _project(
                              "https://firebasestorage.googleapis.com/v0/b/signal-stickers-mukul.appspot.com/o/Portfolio%2FGCFEATURE.jpg?alt=media&token=c06cb5da-dc49-4e7f-8e56-8e1181f4f8bd"),
                          _project(
                              "https://firebasestorage.googleapis.com/v0/b/signal-stickers-mukul.appspot.com/o/Portfolio%2FDarktheme.jpg?alt=media&token=ebe00ba4-25d4-4fa4-bec8-6b710053a2e7")
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    "https://mukulml96.github.io/images/logo.png",
                    height: 20,
                  ),
                  const Text(
                    " Made with Flutter",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            )
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
          width: 120,
          height: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: NetworkImage(img!), fit: BoxFit.cover)),
          // child: Image.asset("$img"),
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
            width: 120,
            height: 80,
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
            child: Icon(
              Icons.open_in_browser,
              color: Colors.white,
              size: 25,
            ),
          ),
        ),
      ],
    ),
  );
}
