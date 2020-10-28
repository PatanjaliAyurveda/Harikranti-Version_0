import 'package:Haritkranti/Screens/welcomeScreens/ScrrenButtons/screen5.dart';
import 'package:flutter/material.dart';

class BT3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.green[900])),
                    color: Colors.green,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(8.0),
                    onPressed: () {
                      //     setState(() {
                      //   Localization.load(Locale('hi', 'IN'));
                      // // });
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => WelcomeScreen5()));
                    },
                    child: Text(
                      "आगे बढ़ें".toUpperCase(),
                      style: TextStyle(
                        fontSize: 24.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                    height: 20.0,
                  ),
                  // FlatButton(
                  //   shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(10.0),
                  //       side: BorderSide(color: Colors.green[900])),
                  //   color: Colors.green,
                  //   textColor: Colors.white,
                  //   padding: EdgeInsets.all(8.0),
                  //   onPressed: () {
                  //     Navigator.push(context,
                  //         MaterialPageRoute(builder: (context) => WelcomeScreen3()));
                  //   },
                  //   child: Text(
                  //     "नहीं".toUpperCase(),
                  //     style: TextStyle(
                  //       fontSize: 24.0,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
      
    );
  }
}