import 'package:Haritkranti/Screens/welcomeScreens/ScrrenButtons/BT3.dart';
import 'package:flutter/material.dart';

class Screen4 extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<Screen4> {
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
              Container(
                child:Column(
                              mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                     Text(
                        ' राजकुमार जी  आपका स्वागत है\n यह एप आपकी आयवृद्धि  मे सह्योग के लिये है |',
                        style: TextStyle(color: Colors.white, fontSize: 22.0),
                      ),
                  ],
                ),
                  height: 130.0,
                  width: MediaQuery.of(context).size.width*9.0,
                  decoration: new BoxDecoration(
                    color: Colors.green,
                  )
                
                    ),
             
              BT3()
            ],
          ),
        ),
      ),
    );
  }
}
