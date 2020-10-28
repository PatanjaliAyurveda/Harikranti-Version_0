import 'package:Haritkranti/Screens/SoilDemi2.dart';
import 'package:flutter/material.dart';

class SoilStatus4 extends StatefulWidget {
  @override
  _SoilStatusState createState() => _SoilStatusState();
}

class _SoilStatusState extends State<SoilStatus4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text('खरपतवार नियंत्रण', style: TextStyle(color: Colors.white, fontSize: 20.0)),

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
              image: AssetImage("assets/images/kharpatwar.jpg"),
              // fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
