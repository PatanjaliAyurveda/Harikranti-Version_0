import 'package:Haritkranti/Screens/page1.dart';
import 'package:Haritkranti/Screens/page2.dart';
import 'package:Haritkranti/Screens/page3.dart';
import 'package:Haritkranti/Screens/page4.dart';
import 'package:Haritkranti/splash.dart';
import 'package:flutter/material.dart';

class ExitConfirmationDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildChild(context),
    );
  }

  _buildChild(BuildContext context) => Container(
        height: 350,
        decoration: BoxDecoration(
            color: Colors.green[900],
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Column(
          children: <Widget>[
            Row(

               children: [
                 

                 
               ],
            ),

            Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  'haritkartilogo-removebg.png',
                  height: 150,
                  width: 150,
                ),
              ),
              
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12))),
                      
            ),
            SizedBox(
              height: 12,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(color: Colors.green)),
                  color: Colors.green[900],
                  textColor: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {
                              Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SoilStatus1()));
                  },
                  child: Text(
                    " बीज \n ".toUpperCase(),
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                ),
                FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                      side: BorderSide(color: Colors.green)),
                  color: Colors.green[900],
                  textColor: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SoilStatus2()));
                  },
                  child: Text(
                    " खाद \n".toUpperCase(),
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                ),
              ],
            ),
                SizedBox(
              height: 24,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(color: Colors.green)),
                  color: Colors.green[900],
                  textColor: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {
                    //     setState(() {
                    //   Localization.load(Locale('hi', 'IN'));
                    // });
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SoilStatus3()));
                  },
                  child: Text(
                    "कीट \nनियंत्रण".toUpperCase(),
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                ),
                FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                      side: BorderSide(color: Colors.green)),
                  color: Colors.green[900],
                  textColor: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SoilStatus4()));
                  },
                  child: Text(
                    "खरपतवार\nनियंत्रण".toUpperCase(),
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                ),
              ],
            ),

            // Text('Do you want to exit?', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
            // SizedBox(height: 8,),
            // Padding(
            //   padding: const EdgeInsets.only(right: 16, left: 16),
            //   child: Text('If back button is pressed by mistake then click on no to continue.', style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),
            // ),
            // SizedBox(height: 24,),
            // Row(
            //   mainAxisSize: MainAxisSize.min,
            //   children: <Widget>[
            // FlatButton(onPressed: (){
            //   Navigator.of(context).pop();
            // }, child: Text('No'),textColor: Colors.white,),
            // SizedBox(width: 8,),
            // RaisedButton(onPressed: (){
            //   return Navigator.of(context).pop(true);
            // }, child: Text('Yes'), color: Colors.white, textColor: Colors.redAccent,)

            //  FlatButton(onPressed: (){
            //   Navigator.of(context).pop();
            // }, child: Text('No'),textColor: Colors.white,),
            // SizedBox(width: 8,),
            // RaisedButton(onPressed: (){
            //   return Navigator.of(context).pop(true);
            // }, child: Text('Yes'), color: Colors.white, textColor: Colors.redAccent,)
            // ],
            // )
          ],
        ),
      );
}
