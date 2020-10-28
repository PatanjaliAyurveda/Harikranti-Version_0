import 'package:Haritkranti/Auth/UI/LoginView.dart';
import 'package:Haritkranti/Screens/HomeView.dart';
import 'package:Haritkranti/Themes/style.dart';
import 'package:Haritkranti/localization/Language.dart';
import 'package:Haritkranti/main.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

const kUrl1 = 'https://luan.xyz/files/audio/ambient_c_motion.mp3';

class SelectYourlanguage extends StatefulWidget {
  final AudioPlayer advancedPlayer;
  SelectYourlanguage({this.advancedPlayer});
  @override
  _SelectYourlanguageState createState() => _SelectYourlanguageState();
}

class _SelectYourlanguageState extends State<SelectYourlanguage>
    with SingleTickerProviderStateMixin {
  Animation<Color> animation;
  AnimationController controller;

  // ignore: unused_element
  void _changeLanguage(Language language) {
    Locale _temp;
    switch (language.languageCode) {
      case 'en':
        _temp = Locale(language.languageCode, 'US');
        break;
      case 'hi':
        _temp = Locale(language.languageCode, 'IN');
        break;
      default:
        _temp = Locale(language.languageCode, 'US');
    }

    MyApp.setLocale(context, _temp);
  }

  Widget _buildLanguage() {
    return DropdownButton(
        iconSize: 30,
        hint: Text('Select Other Available Language'),
        items: Language.languageList()
            .map<DropdownMenuItem<Language>>((e) => DropdownMenuItem(
                  value: e,
                  child: Text(e.name),
                ))
            .toList(),
        onChanged: (Language language) {
          _changeLanguage(language);
        });
  }
//
AudioCache audioCache = AudioCache();
  initState() {
    super.initState();

    audioCache.play('a.wav');
    

    controller = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);

    final CurvedAnimation curve =
        CurvedAnimation(parent: controller, curve: Curves.ease);

    animation =
        ColorTween(begin: Colors.black, end: Colors.white).animate(curve);

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
      setState(() {});
    });

    controller.forward();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/LG.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image(
              //   image: AssetImage('assets/haritkartilogo-removebg.png'),
              //   height: 130.0,
              //   width: 130.0,
              // ),
              Text('', style: pageHeading),
              SizedBox(
                height: 120.0,
              ),
              Text(
                "Please Select Your Language",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              SizedBox(
                height: 12.0,
              ),
              Text("कृपया अपनी भाषा चुनें",
                  style: TextStyle(color: animation.value, fontSize: 20)),
              SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.green)),
                    color: Colors.green[900],
                    textColor: Colors.white,
                    padding: EdgeInsets.all(8.0),
                    onPressed: () {
                      //     setState(() {
                      //   Localization.load(Locale('hi', 'IN'));
                      // });
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginView()));
                    },
                    child: Text(
                      "हिंदी".toUpperCase(),
                      style: TextStyle(
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 110.0,
                    height: 30.0,
                  ),
                  FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.green)),
                    color: Colors.green[900],
                    textColor: Colors.white,
                    padding: EdgeInsets.all(8.0),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Text(
                      " English ".toUpperCase(),
                      style: TextStyle(
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              // _buildLanguage(),
            ],
          ),
        ],
      ),
    ));
  }
}
