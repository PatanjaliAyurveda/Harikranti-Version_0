import 'package:Haritkranti/Themes/style.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/splash.png"),
              fit: BoxFit.cover,
            ),
          ),
        //  child: Column(
        //    children: [

        //     Padding(
        //       padding: const EdgeInsets.only(top:8.0),
        //       child: Image(
        //           image: AssetImage('assets/haritkartilogo-removebg.png'),
        //           // height: 100.0,
        //           // width: 100.0,
        //         ),
        //     ),
        //       // SizedBox(
        //       //   height: 10.0,
        //       // ),
        //       // Text('Welcome To HaritKranti', style: pageHeading),
        //       // SizedBox(
        //       //   height: 10.0,
        //       // ),
        //       // Text(
        //       //   'अर्वाची सुभगे भव सीते वन्दामहे त्वा',
        //       //   style: TextStyle(color: Colors.green, fontSize: 15.0),
              
        //       // ),
        //       // SizedBox(
        //       //   height: 5.0,
        //       // ),
        //       // Text(
        //       //   ' यथा नः सुभगाससि यथा नः सुफलाससि',
        //       //   style: TextStyle(color: Colors.green, fontSize: 20.0),
        //       // ),

        //    ],
          
        //  ),
  
        ),
      ),
    );
  }
}

