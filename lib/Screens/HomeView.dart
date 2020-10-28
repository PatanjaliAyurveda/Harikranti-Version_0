import 'package:Haritkranti/Screens/Buttons/homrpageButtoms.dart';
import 'package:Haritkranti/Screens/Buttons/lastButtons.dart';
import 'package:Haritkranti/Screens/appbarweatherUI.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AudioCache audioCache = AudioCache();

  initState() {
    super.initState();

    audioCache.play('abc.mp3');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text('हरितक्रांति में आपका स्वागत है'),
      ),
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
            children: [
              StatusBarWidgetWeather(),
              SizedBox(
                height: 10.0,
              ),
              MyButton(),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "खसरा का भौगोलिक दृश्य",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  height: 200.0,
                  width: MediaQuery.of(context).size.width * 0.97,
                  decoration: new BoxDecoration(
                      color: Colors.blueAccent,
                      image: new DecorationImage(
                        image: new AssetImage("assets/Khasra sample.png"),
                        fit: BoxFit.fill,
                      ))),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "खेत की स्थिति",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  height: 130.0,
                  width: MediaQuery.of(context).size.width * 0.97,
                  color: Colors.green[900],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'आपके खेत में उपयुक्त नमी की कमी है|',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'मंगलवार को न्यूनतम तापमान  13° तक गिरने की संभावना है|',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ],
                  )
                  // decoration: new BoxDecoration(
                  //     color: Colors.blueAccent,
                  //     image: new DecorationImage(
                  //       image: new AssetImage("assets/farm.jpeg"),
                  //       fit: BoxFit.fill,
                  // )
                  // )
                  ),
              SizedBox(
                height: 8.0,
              ),
              MyButtonS(),
            ],
          ),
        ),
      ),
    );
  }
}
