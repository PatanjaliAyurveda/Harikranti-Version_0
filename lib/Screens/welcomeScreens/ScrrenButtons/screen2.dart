import 'package:Haritkranti/Screens/welcomeScreens/ScrrenButtons/BT1.dart';
import 'package:Haritkranti/Screens/welcomeScreens/ScrrenButtons/Screen3.dart';
import 'package:Haritkranti/Screens/welcomeScreens/ScrrenButtons/Screen4.dart';

import 'package:Haritkranti/Screens/welcomeScreens/ScrrenButtons/fake.dart';
import 'package:flutter/material.dart';

class WelcomeScreen2 extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen2> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/Background-02.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // StatusBarWidgetWeather(),

              Text(
                "भू-स्वामी और खेतीकर्ता मे से चयन करें ?",
                style: TextStyle(color: Colors.white, fontSize: 28.0),
              ),
              SizedBox(
                height: 40.0,
              ),
              BTF(),
              
              Container(
                height: 140.0,
                width: 150.0,
                decoration: new BoxDecoration(
                    color: Colors.green[800],
                    borderRadius: BorderRadius.circular(10.5)

                    // image: new DecorationImage(
                    //   image: new AssetImage("assets/Map.jpg"),
                    //   fit: BoxFit.fill,
                    ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Container(
                        height: 60.0,
                        width: 140.0,
                        decoration: new BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10.5)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.done,
                              color: Colors.blue,
                            ),
                            Text(
                              "भू-स्वामी ?",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>Screen4()));
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    InkWell(
                      child: Container(
                        height: 60.0,
                        width: 140.0,
                        decoration: new BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10.5)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.done,
                              color: Colors.blue,
                            ),
                            Text(
                              "खेतीकर्ता ?",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Screen4()));
                      },
                    ),
                  ],
                ),
              ),
              // SizedBox(
              //   height: 10.0,
              // ),
              // Text(
              //   "खेत की स्थिति",
              //   style: TextStyle(color: Colors.white, fontSize: 20.0),
              // ),
              // SizedBox(
              //   height: 10.0,
              // ),
              // Container(
              //     height: 130.0,
              //     width: MediaQuery.of(context).size.width * 0.97,
              //     color: Colors.green[900],
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //       children: [
              //         Text(
              //           'आपके खेत में उपयुक्त नमी की कमी है|',
              //           style: TextStyle(color: Colors.white, fontSize: 22.0),
              //         ),
              //         SizedBox(
              //           height: 10.0,
              //         ),
              //         Text(
              //           'मंगलवार को तापमान न्यूनतम 13° तक गिरने वाला है|',
              //           style: TextStyle(color: Colors.white, fontSize: 22.0),
              //         ),
              //       ],
              //     )
              //     // decoration: new BoxDecoration(
              //     //     color: Colors.blueAccent,
              //     //     image: new DecorationImage(
              //     //       image: new AssetImage("assets/farm.jpeg"),
              //     //       fit: BoxFit.fill,
              //     // )
              //     // )
              //     ),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
