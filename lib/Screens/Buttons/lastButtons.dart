import 'package:Haritkranti/Auth/UI/LoginView.dart';
import 'package:Haritkranti/Screens/SoilDemi2.dart';
import 'package:Haritkranti/Screens/SoilStatus.dart';
import 'package:Haritkranti/splash.dart';
import 'package:flutter/material.dart';

class MyButtonS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => SoilStatus()));
                    },
                    child: Text(
                      "खसरा\nनं.13".toUpperCase(),
                      style: TextStyle(
                        fontSize: 22.0,
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
                          MaterialPageRoute(builder: (context) => Splash()));
                    },
                    child: Text(
                      "अन्य\nसूचना".toUpperCase(),
                      style: TextStyle(
                        fontSize: 22.0,
                      ),
                    ),
                  ),
                ],
              ),
      
    );
  }
}