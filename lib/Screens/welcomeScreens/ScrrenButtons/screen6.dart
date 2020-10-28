import 'package:Haritkranti/Screens/Buttons/homrpageButtoms.dart';
import 'package:Haritkranti/Screens/appbarweatherUI.dart';
import 'package:Haritkranti/Screens/welcomeScreens/ScrrenButtons/BT9.dart';
import 'package:Haritkranti/Screens/welcomeScreens/ScrrenButtons/BT5.dart';
import 'package:Haritkranti/Screens/welcomeScreens/ScrrenButtons/bt6.dart';
import 'package:flutter/material.dart';

class WelcomeScreen6 extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen6> {
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
                "क्या आप फसल लगा चुके है?",
                style: TextStyle(color: Colors.white, fontSize: 28.0),
              ),
               SizedBox(
                height: 40.0,
              ),
              BT5(),
              // Container(
              //     height: 130.0,
              //     width: MediaQuery.of(context).size.width * 0.97,
              //     decoration: new BoxDecoration(
              //         color: Colors.blueAccent,
              //         image: new DecorationImage(
              //           image: new AssetImage("assets/Map.jpg"),
              //           fit: BoxFit.fill,
              //         ))),
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