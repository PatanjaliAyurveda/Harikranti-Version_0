import 'package:Haritkranti/Screens/welcomeScreens/ScrrenButtons/BT1.dart';
import 'package:Haritkranti/Screens/welcomeScreens/ScrrenButtons/BT2.dart';
import 'package:Haritkranti/Screens/welcomeScreens/ScrrenButtons/BT4.dart';
import 'package:Haritkranti/Screens/welcomeScreens/ScrrenButtons/BT5.dart';
import 'package:Haritkranti/Screens/welcomeScreens/ScrrenButtons/bt6.dart';
import 'package:flutter/material.dart';

class WelcomeScreen9 extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}




 _buildInput() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10.5),
          child: Icon(
            Icons.article,
            color: Colors.white,
          ),
        ),
        // Padding(
          // padding: const EdgeInsets.all(8.0),
          // child: Text('+91 ', style: TextStyle(fontSize: 30.0)),
        // ),
        Expanded(
          flex: 1,
          child: TextFormField(
            maxLength: 3,
            keyboardType: TextInputType.number,
            autocorrect: false,
            decoration: InputDecoration(
              hintText: 'दिन',
            ),
          ),
        ),
      ],
    );
  }
class _WelcomeScreenState extends State<WelcomeScreen9> {
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // StatusBarWidgetWeather(),
            
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "कितने दिन पहले लगाई है ?",
                  style: TextStyle(color: Colors.white, fontSize: 28.0),
                ),
              ),
               SizedBox(
                height: 10.0,
              ),
                
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                    height: 130.0,
                    width: MediaQuery.of(context).size.width,
                    decoration: new BoxDecoration(
                        color: Colors.green,
                       
                        ),
                        child:_buildInput()
                        
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
              
            BT6(),
                  ],
          ),
        ),
        
      ),
    );
      
  }
}