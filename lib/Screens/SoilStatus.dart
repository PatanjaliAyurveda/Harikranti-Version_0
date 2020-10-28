import 'package:Haritkranti/Screens/SoilDemi2.dart';
import 'package:flutter/material.dart';

class SoilStatus extends StatefulWidget {
  @override
  _SoilStatusState createState() => _SoilStatusState();
}

class _SoilStatusState extends State<SoilStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text('मिट्टी कीस्थिति'),
        actions: <Widget>[
          // Padding(
          //   padding: EdgeInsets.only(right: 20.0),
          //   child: GestureDetector(
          //   //   onTap: () {},
          //   //   child: Icon(
          //   //     // Icons.search,
          //   //     size: 26.0,
          //   //   ),
          //   // )
          // ),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Text("Next");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SoilStatus2()));
                },
                child: Icon(Icons.arrow_forward),
              )),
        ],
      ),
        floatingActionButton: FloatingActionButton(
  backgroundColor: const Color(0xff03dac6),
  foregroundColor: Colors.black,
  mini: true,
  onPressed: () {
    // Respond to button press
  },
  child: Icon(Icons.cloud_download),
),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 1000.0,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/soil.png1.png"),
              // fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
