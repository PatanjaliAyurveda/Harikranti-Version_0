// import 'package:Haritkranti/localization/SelectYourLanguage.dart';
import 'package:Haritkranti/localization/SelectYourLanguage.dart';
import 'package:Haritkranti/splash.dart';
import 'package:flutter/material.dart';

class MyButtonZ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.lightBlueAccent)),
                    color: Colors.lightBlueAccent,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(8.0),
                    onPressed: () {
                      //     setState(() {
                      //   Localization.load(Locale('hi', 'IN'));
                      // });
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Splash()));
                    },
                    child: Text(
                      "".toUpperCase(),
                      style: TextStyle(
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                  SizedBox(
                  // width: MediaQuery.of(context).size.width,
                   height: MediaQuery.of(context).size.width,

                    // height: 30.0,
                  ),
                  FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.lightBlueAccent)),
                    color: Colors.lightBlueAccent,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(8.0),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SelectYourlanguage()));
                    },
                    child: Text(
                      " ".toUpperCase(),
                      style: TextStyle(
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                ],
              ),
      
    );
  }
}