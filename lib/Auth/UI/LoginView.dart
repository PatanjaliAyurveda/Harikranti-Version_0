
import 'package:Haritkranti/Auth/UI/RegistrationView.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  AudioCache audioCache = AudioCache();

  initState() {
    super.initState();

    audioCache.play('b.wav');
  }

  Widget _buildPhoneNumber(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10.5),
          child: Icon(
            Icons.phone_android,
            color: Colors.black,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('+91 ', style: TextStyle(fontSize: 30.0)),
        ),
        Expanded(
          flex: 1,
          child: TextFormField(
            maxLength: 10,
            keyboardType: TextInputType.number,
            autocorrect: false,
            decoration: InputDecoration(
              hintText: 'कृप्या अपना मोबाइल नंबर दर्ज करें',
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildButton(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22.0),
                side: BorderSide(color: Colors.green[900])),
            color: Colors.green,
            textColor: Colors.white,
            padding: EdgeInsets.all(8.0),
            onPressed: () {
                  

              Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BasicDetailView()));

            },
            child: Text(
              "एक बार इस्तेमाल किये जाने वाला पासवर्ड प्राप्त करें"
                  .toUpperCase(),
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
          SizedBox(width: 10),
          // RaisedButton(
          //   shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(20.0),
          //       side: BorderSide(color: Colors.blueAccent)),
          //   onPressed: () {},
          //   color: Colors.blue[900],
          //   textColor: Colors.white,
          //   child: Text("साइन अप करें".toUpperCase(),
          //       style: TextStyle(fontSize: 19)),
          // ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Background-02.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/haritkartilogo-removebg.png'),
                height: 200.0,
                width: 200.0,
              ),
              SizedBox(
                height: 10.0,
              ),
              // Text(getTranslated(context, 'Welcome_To_HaritKranti'), style: pageHeading),
              Text(''),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'अर्वाची सुभगे भव सीते वन्दामहे त्वा',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                ' यथा नः सुभगाससि यथा नः सुफलाससि',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),

              SizedBox(
                height: 10.0,

              ),
                 Text(
                'Rig veda 4.057.006',
                style: TextStyle(color: Colors.white, fontSize: 8.0),
              ),
              SizedBox(
                height: 10.0,

              ),
              _buildPhoneNumber(context),
              SizedBox(
                height: 10.0,
              ),
              _buildButton(context),
            ],
          ),
        ),
      ),
    );
  }
}
