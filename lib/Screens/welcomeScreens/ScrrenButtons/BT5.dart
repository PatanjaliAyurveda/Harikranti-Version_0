import 'package:Haritkranti/Screens/welcomeScreens/ScrrenButtons/screen10.dart';
import 'package:Haritkranti/Screens/welcomeScreens/ScrrenButtons/screen6.dart';
import 'package:Haritkranti/Screens/welcomeScreens/ScrrenButtons/screen7.dart';
import 'package:Haritkranti/Screens/welcomeScreens/ScrrenButtons/screen9.dart';
import 'package:flutter/material.dart';

class BT5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      // });
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => WelcomeScreen10()));
                    },
                    child: Text(
                      "हाँ".toUpperCase(),
                      style: TextStyle(
                        fontSize: 24.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                    height: 20.0,
                  ),
                  FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.green[900])),
                    color: Colors.green,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(8.0),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => WelcomeScreen7()));
                    },
                    child: Text(
                      "नहीं".toUpperCase(),
                      style: TextStyle(
                        fontSize: 24.0,
                      ),
                    ),
                  ),
                ],
              ),
      
    );
  }
}
























// import 'package:Haritkranti/Screens/welcomeScreens/ScrrenButtons/screnen11.dart';
// import 'package:flutter/material.dart';

// class BT4 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
      
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//                 // mainAxisAlignment: MainAxisAlignment.center,
//                 // crossAxisAlignment: CrossAxisAlignment.center,
//                 children: <Widget>[
//                   FlatButton(
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10.0),
//                         side: BorderSide(color: Colors.green[900])),
//                     color: Colors.green,
//                     textColor: Colors.white,
//                     padding: EdgeInsets.all(8.0),
//                     onPressed: () {
//                       //     setState(() {
//                       //   Localization.load(Locale('hi', 'IN'));
//                       // });
//                       Navigator.push(context,
//                           MaterialPageRoute(builder: (context) => WelcomeScreen12()));
//                     },
//                     child: Text(
//                       "दर्ज करें".toUpperCase(),
//                       style: TextStyle(
//                         fontSize: 24.0,
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 10.0,
//                     height: 20.0,
//                   ),
//                   // FlatButton(
//                   //   shape: RoundedRectangleBorder(
//                   //       borderRadius: BorderRadius.circular(10.0),
//                   //       side: BorderSide(color: Colors.green[900])),
//                   //   color: Colors.green,
//                   //   textColor: Colors.white,
//                   //   padding: EdgeInsets.all(8.0),
//                   //   onPressed: () {
//                   //     Navigator.push(context,
//                   //         MaterialPageRoute(builder: (context) => WelcomeScreen3()));
//                   //   },
//                   //   child: Text(
//                   //     "नहीं".toUpperCase(),
//                   //     style: TextStyle(
//                   //       fontSize: 24.0,
//                   //     ),
//                   //   ),
//                   // ),
//                 ],
//               ),
      
//     );
//   }
// }