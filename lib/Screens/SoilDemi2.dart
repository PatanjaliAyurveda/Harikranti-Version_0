import 'package:flutter/material.dart';

class SoilStatus2 extends StatelessWidget {



  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
      backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text('मिट्टी की स्थिति का विवरण'),
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
              image: AssetImage("assets/soil.png2.png"),
              // fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      
    );
  }
}
