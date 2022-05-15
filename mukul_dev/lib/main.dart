// ignore_for_file: sized_box_for_whitespace

import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

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
          // primarySwatch:MaterialColor(primary, swatch),
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
      backgroundColor: const Color.fromARGB(255, 12, 8, 77),
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
                    const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Icon(
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
              height: 350,
              child: Stack(
                children: [
                  // Container(
                  //   height: 200,
                  //   width: MediaQuery.of(context).size.width,
                  //   decoration: const BoxDecoration(
                  //       color: Colors.black12,
                  //       image: DecorationImage(
                  //           image: AssetImage(
                  //             "assets/cv.jpeg",
                  //           ),
                  //           fit: BoxFit.cover)),
                  //   child: const Padding(
                  //     padding: EdgeInsets.all(8.0),
                  //   ),
                  // ),
                  Container(
                    // height: 350.0,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        gradient: LinearGradient(
                            begin: FractionalOffset.topCenter,
                            end: FractionalOffset.bottomCenter,
                            colors: [
                              const Color.fromARGB(255, 35, 35, 35)
                                  .withOpacity(0.1),
                              const Color.fromARGB(255, 46, 67, 138),
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
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.start,
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: const [
                      //     Text(
                      //       "   Projects          Services          About ",
                      //       style: TextStyle(color: Colors.white, fontSize: 15),
                      //     ),
                      //     // Icon(
                      //     //   Icons.arrow_drop_down,
                      //     //   color: Colors.white,
                      //     // )
                      //   ],
                      // ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(45),
                                image: const DecorationImage(
                                    image: NetworkImage(
                                      "https://mukulml96.github.io/images/profile.jpeg",
                                    ),
                                    fit: BoxFit.cover)),
                            // child: Image.asset("$img"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                bottom: 15, left: 15, top: 10),
                            child: Column(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      " Hola,I'm ",
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.8),
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    const VxShimmer(
                                      primaryColor: const Color.fromARGB(
                                          255, 136, 136, 136),
                                      duration: Duration(seconds: 3),
                                      child: Text(
                                        "Mukul ML",
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 48,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.developer_mode,
                                          size: 15,
                                          color: Colors.white,
                                        ),
                                        const Text(
                                          " Mobile Application Developer",
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 3),
                                    // Container(
                                    //   width:
                                    //       MediaQuery.of(context).size.width / 3,
                                    //   child: Padding(
                                    //     padding: EdgeInsets.only(
                                    //         bottom: 15, top: 10),
                                    //     child: Column(
                                    //       children: [
                                    //         Text(
                                    //           "I'm a Mobile App developer and an Artist with a demonstrated history of working in IT and design industries. Skilled in Mobile App Development, Product Design, User Experience (UX), and Logo Design.",
                                    //           style: TextStyle(
                                    //               color: Colors.white
                                    //                   .withOpacity(0.8),
                                    //               fontSize: 12,
                                    //               fontWeight:
                                    //                   FontWeight.normal),
                                    //         ),
                                    //       ],
                                    //     ),
                                    //   ),
                                    // ),
                                    Row(
                                      children: [
                                        _tags("Flutter"),
                                        _tags("Swift"),
                                        _tags("Ionic"),
                                        _tags("Android"),
                                        _tags("iOS"),
                                        // Container(
                                        //   decoration: BoxDecoration(
                                        //       color: Colors.blue,
                                        //       borderRadius:
                                        //           BorderRadius.circular(10)),
                                        //   child: Row(
                                        //     children: [
                                        //       Padding(
                                        //         padding:
                                        //             const EdgeInsets.symmetric(
                                        //                 horizontal: 5,
                                        //                 vertical: 3),
                                        //         child: Text(
                                        //           "Flutter • Swift • Ionic • Android • iOS • Web",
                                        //           style: TextStyle(
                                        //               color: Colors.white,
                                        //               fontSize: 12,
                                        //               fontWeight:
                                        //                   FontWeight.bold),
                                        //         ),
                                        //       ),
                                        //     ],
                                        //   ),
                                        // ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(
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
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white)),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: const Text(
                                "Get In Touch",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: () async {
                                        const url =
                                            "https://www.linkedin.com/in/mukul-ml-a7ba9015b/";
                                        if (await canLaunch(url))
                                          await launch(url);
                                        else
                                          // can't launch url, there is some error
                                          throw "Could not launch $url";
                                      },
                                      child: Icon(
                                        AntIcons.linkedinFilled,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: () async {
                                        const url =
                                            "https://github.com/mukulml96";
                                        if (await canLaunch(url))
                                          await launch(url);
                                        else
                                          // can't launch url, there is some error
                                          throw "Could not launch $url";
                                      },
                                      child: Icon(
                                        AntIcons.githubFilled,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: () async {
                                        const url =
                                            "https://play.google.com/store/apps/dev?id=5699858615330925502";
                                        if (await canLaunch(url))
                                          await launch(url);
                                        else
                                          // can't launch url, there is some error
                                          throw "Could not launch $url";
                                      },
                                      child: Icon(
                                        Icons.play_arrow,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: () async {
                                        const url =
                                            "https://twitter.com/mukulml96";
                                        if (await canLaunch(url))
                                          await launch(url);
                                        else
                                          // can't launch url, there is some error
                                          throw "Could not launch $url";
                                      },
                                      child: Icon(
                                        AntIcons.twitterSquareFilled,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
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
                        " Featured Mobile App Projects",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 15, left: 15, top: 10),
                      child: Text(
                        "Personal Projects",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          _project(
                              "https://mukulml96.github.io/images/xpenx.png",
                              url:
                                  "https://play.google.com/store/apps/details?id=com.mukul.xpenx",
                              title: "Xpenx"),
                          _project(
                              "https://mukulml96.github.io/images/signalstickers.jpeg",
                              url:
                                  "https://play.google.com/store/apps/details?id=com.mukul.signal_sticker",
                              title: "Signal Stickers"),
                          _project(
                              "https://mukulml96.github.io/images/netflix.png",
                              url: "https://github.com/mukulml96/Netflix-UI",
                              title: "Netflix Clone"),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 15, left: 15, top: 10),
                      child: Text(
                        "Other Projects",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          _project(
                              "https://mukulml96.github.io/images/lookaround.jpeg",
                              url:
                                  "http://play.google.com/store/apps/details?id=com.cn.lookaround",
                              title: "Look Around"),
                          _project(
                              "https://mukulml96.github.io/images/handimed.jpeg",
                              url:
                                  "https://play.google.com/store/apps/details?id=com.cognosin.HandiMed",
                              title: "HandiMed"),
                          _project(
                              "https://mukulml96.github.io/images/genesisart.jpeg",
                              url:
                                  "https://apps.apple.com/us/app/genesis-art-cards/id1553675535",
                              title: "Genesis Art Cards"),
                          _project(
                              "https://mukulml96.github.io/images/taskic.jpeg",
                              url: "",
                              title: "Learning Platform")
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
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}

_tags(text) {
  return Padding(
    padding: const EdgeInsets.all(3.0),
    child: InkWell(
      hoverColor: Colors.blue,
      child: Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 7, 47, 107),
            borderRadius: BorderRadius.circular(5)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
              child: Text(
                text,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

_project(String? img, {url, title}) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      children: [
        Stack(
          children: [
            InkWell(
              hoverColor: Colors.blue,
              child: Container(
                width: 225,
                height: 125,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(img!), fit: BoxFit.cover)),
                // child: Image.asset("$img"),
              ),
            ),
            InkWell(
              onTap: () async {
                // const url =
                //     "https://play.google.com/store/apps/details?id=com.mukul.signal_sticker";
                if (await canLaunch(url))
                  await launch(url);
                else
                  // can't launch url, there is some error
                  throw "Could not launch $url";
              },
              child: Container(
                width: 120,
                height: 80,
                // decoration: BoxDecoration(
                //     color: Colors.black,
                //     gradient: LinearGradient(
                //         begin: FractionalOffset.topCenter,
                //         end: FractionalOffset.bottomCenter,
                //         colors: [
                //           Colors.black.withOpacity(0.2),
                //           Colors.black.withOpacity(0.4),
                //         ],
                //         stops: const [
                //           0.0,
                //           1.0
                //         ])),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Spacer(),
                    // Icon(
                    //   Icons.open_in_browser,
                    //   color: Colors.white,
                    //   size: 25,
                    // ),
                    // Container(
                    //   decoration: BoxDecoration(
                    //     color: Colors.white,
                    //   ),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.end,
                    //     children: [
                    //       Icon(
                    //         AntIcons.androidFilled,
                    //         color: Colors.green[400],
                    //         size: 15,
                    //       ),
                    //       Icon(
                    //         AntIcons.appleFilled,
                    //         color: Colors.black,
                    //         size: 15,
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            title ?? "Signal Stickers",
            style: const TextStyle(
                color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
  );
}
