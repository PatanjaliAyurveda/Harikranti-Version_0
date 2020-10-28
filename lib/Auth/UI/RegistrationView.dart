import 'dart:ui';

import 'package:Haritkranti/Screens/welcomeScreens/ScrrenButtons/Screen1.dart';
import 'package:Haritkranti/village_mapping.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}

String isEmpty(String value) {
  if (value.length == 0) {
    return 'This Field is Required.';
  }
  return null;
}

class BasicDetailView extends StatefulWidget {
  
  @override
  _BasicDetailViewState createState() => _BasicDetailViewState();
}

class _BasicDetailViewState extends State<BasicDetailView> {

  AudioCache audioCache = AudioCache();

  initState() {
    super.initState();

    audioCache.play('c.wav');
  }


  DateTime selectedDate = DateTime.now();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = true;
  //auth reg ui upload doc
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _partyTypeController = TextEditingController();
  TextEditingController _rajyaTypeController = TextEditingController();
  TextEditingController _gstNoController = TextEditingController();
  TextEditingController _gstDateController = TextEditingController();
  TextEditingController _panNumberController = TextEditingController();
  TextEditingController _jilaNumberController = TextEditingController();
  TextEditingController _tehsilNumberController = TextEditingController();
  TextEditingController _khandNumberController = TextEditingController();
  TextEditingController _GaonNumberController = TextEditingController();
  TextEditingController _KhasraNumberController = TextEditingController();

  String _name;
  String _email;
  String _partyType;
  String _maleType;
  String _tehsilType;
  String _rajyaType;
  String _JilaType;
  String _khandType;
  String _khasraType;
  String _villageType;
  String _gstRegistrationNo;
  String _gstRegistrationDate;
  String _panNumber;

  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'जिला',
       /* icon: Icon(
          Icons.face,
          //color: kPrimaryColor,
        ),*/
      ),

      validator: isEmpty,
      controller: _nameController,
      onSaved: (String value) {
        _name = value;
      },
    );
  }

  Widget _buildGaon() {
    return TextFormField(
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(

        labelText: 'जिला',
        /* icon: Icon(
          Icons.face,
          //color: kPrimaryColor,
        ),*/
      ),
      validator: isEmpty,
      controller: _nameController,
      onSaved: (String value) {
        _name = value;
      },
    );
  }

  Widget _buildKhasraNumber() {
    return TextFormField(
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        labelText: 'खसरा नंबर',
        /* icon: Icon(
          Icons.face,
          //color: kPrimaryColor,
        ),*/
      ),
      validator: isEmpty,
      controller: _nameController,
      onSaved: (String value) {
        _name = value;
      },
    );
  }

  Widget _buildKhandName() {
    return TextFormField(
      style: TextStyle(
        color: Colors.white,

      ),
      decoration: InputDecoration(
        labelText: 'खंड',
        /* icon: Icon(
          Icons.face,
          //color: kPrimaryColor,
        ),*/
      ),
      validator: isEmpty,
      controller: _nameController,
      onSaved: (String value) {
        _name = value;
      },
    );
  }

  Widget _buildEmail() {
    return TextFormField(
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        labelText: 'तहसील',
       /* icon: Icon(
          Icons.mail,
          //color: kPrimaryColor,
        ),*/
      ),
      // validator: (input) =>
      //     input.isValidEmail() ? null : "This format (abc@gmail.com).",
      controller: _emailController,
      // onSaved: (String value) {
      //   _email = value;
      // },
    );
  }

  List<String> _parties = [
    'FARMER',
    'VENDOR',
  ];

  Widget _buildPartType() {
    return Row(
      children: [

        Expanded(
          flex: 1,
          child: DropdownButtonFormField<String>(
            hint: Text('राज्य',style: TextStyle(color: Colors.white,fontSize: 25.0),),
            elevation: 5,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 36.0,
            isExpanded: true,
            value: _partyType,
            style: TextStyle(color: Colors.black),
            validator: (value) =>
                value == null ? 'This Field is Required' : null,
            onChanged: (value) {
              setState(() {
                _partyType = value;
                if (_partyType == 'VENDOR') {
                  _partyTypeController.text = 'V';
                } else if (_partyType == 'FARMER') {
                  _partyTypeController.text = 'C';
                }
              });
            },
            items: _parties.map((value) {
              return DropdownMenuItem(value: value, child: Text(value));
            }).toList(),
          ),
        ),
      ],
    );
  }

  List<String> _male = [
    '1',
    '2','3','4','5',
  ];

  Widget _buildMaleType() {
    return Row(
      children: [

        Expanded(
          flex: 1,
          child: DropdownButtonFormField<String>(
            hint: Text('राज्य',style: TextStyle(color: Colors.black,fontSize: 25.0),),
            elevation: 5,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 36.0,
            isExpanded: true,
            value: _maleType,
            style: TextStyle(color: Colors.black),
           // validator: (value) =>
           // value == null ? 'This Field is Required' : null,
            onChanged: (value) {
              setState(() {
                _maleType = value;
                if (_maleType == '1') {
                  _partyTypeController.text = 'V';
                } else if (_maleType == '2') {
                  _partyTypeController.text = 'C';
                }
              });
            },
            items: _male.map((value) {
              return DropdownMenuItem(value: value, child: Text(value));
            }).toList(),
          ),
        ),
      ],
    );
  }

  List<String> _rajya = [
    'uttrakhand',
  ];

  Widget _buildRajyaType() {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: DropdownButtonFormField<String>(
            hint: Text('राज्य',style: TextStyle(color: Colors.white,fontSize: 25.0),),
            elevation: 5,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 36.0,
            isExpanded: true,
            value: _rajyaType,
            style: TextStyle(color: Colors.black),
            validator: (value) =>
            value == null ? 'This Field is Required' : null,
            onChanged: (value) {
              setState(() {
                _rajyaType = value;
                if (_rajyaType == 'uttrakhand') {
                  _rajyaTypeController.text = 'R';
                } else if (_rajyaType == 'uttrakhand') {
                  _rajyaTypeController.text = 'C';
                }
              });
            },
            items: _rajya.map((value) {
              return DropdownMenuItem(value: value, child: Text(value));
            }).toList(),
          ),
        ),
      ],
    );
  }

  List<String> jila = [
    'haridwar',
  ];

  Widget _buildJilaType() {
    return Row(
      children: [

        Expanded(
          flex: 1,
          child: DropdownButtonFormField<String>(
            hint: Text('जिला',style: TextStyle(color: Colors.white,fontSize: 25.0),),
            elevation: 5,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 36.0,
            isExpanded: true,
            value: _JilaType,
            style: TextStyle(color: Colors.black),
            validator: (value) =>
            value == null ? 'This Field is Required' : null,
            onChanged: (value) {
              setState(() {
                _JilaType = value;
                if (_JilaType == 'haridwar') {
                  _jilaNumberController.text = 'H';
                } else if (_JilaType == 'haridwar') {
                  _jilaNumberController.text = 'C';
                }
              });
            },
            items: jila.map((value) {
              return DropdownMenuItem(value: value, child: Text(value));
            }).toList(),
          ),
        ),
      ],
    );
  }

  List<String> tehsil = [
    'haridwar','laksar',
  ];

  Widget _buildTehsillType() {
    return Row(
      children: [

        Expanded(
          flex: 1,
          child: DropdownButtonFormField<String>(
            hint: Text('तहसील',style: TextStyle(color: Colors.white,fontSize: 25.0),),
            elevation: 5,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 36.0,
            isExpanded: true,
            value: _partyType,
            style: TextStyle(color: Colors.black),
            validator: (value) =>
            value == null ? 'This Field is Required' : null,
            onChanged: (value) {
              setState(() {
                _tehsilType = value;
                if (_tehsilType == 'laksar') {
                  _tehsilNumberController.text = 'V';
                } else if (_tehsilType == 'FARMER') {
                  _tehsilNumberController.text = 'C';
                }
              });

            },
            items: tehsil.map((value) {
              return DropdownMenuItem(value: value, child: Text(value));
            }).toList(),
          ),
        ),
      ],
    );
  }
  List<String> khand = [
    'laksar','Bahadrabad',
  ];

  Widget _buildKhandType() {
    return Row(
      children: [

        Expanded(
          flex: 1,
          child: DropdownButtonFormField<String>(
            hint: Text('खंड',style: TextStyle(color: Colors.white,fontSize: 25.0),),
            elevation: 5,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 36.0,
            isExpanded: true,
            value: _khandType,
            style: TextStyle(color: Colors.black),
            validator: (value) =>
            value == null ? 'This Field is Required' : null,
            onChanged: (value) {
              setState(() {
                _khandType = value;
                if (_khandType == 'VENDOR') {
                  _khandNumberController.text = 'V';
                } else if (_partyType == 'FARMER') {
                  _khandNumberController.text = 'C';
                }
              });
            },
            items: khand.map((value) {
              return DropdownMenuItem(value: value, child: Text(value));
            }).toList(),
          ),
        ),
      ],
    );
  }

  List<String> village = [
    'Jaspur','Ranjitpur',
  ];

  Widget _buildVillageType() {
    return Row(
      children: [

        Expanded(
          flex: 1,
          child: DropdownButtonFormField<String>(
            hint: Text('गाँव',style: TextStyle(color: Colors.white,fontSize: 25.0),),
            elevation: 5,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 36.0,
            isExpanded: true,
            value: _villageType,
            style: TextStyle(color: Colors.black),
            validator: (value) =>
            value == null ? 'This Field is Required' : null,
            onChanged: (value) {
              setState(() {
                _villageType = value;
                if (_villageType == 'VENDOR') {
                  _GaonNumberController.text = 'V';
                } else if (_villageType == 'FARMER') {
                  _GaonNumberController.text = 'C';
                }
              });
            },
            items: village.map((value) {
              return DropdownMenuItem(value: value, child: Text(value));
            }).toList(),
          ),
        ),
      ],
    );
  }


  List<String> khasrano = [
    '65','70','228/2','289','286/2','69/4','256','286',
  ];

  Widget _buildKhasraType() {
    return Row(
      children: [

        Expanded(
          flex: 1,
          child: DropdownButtonFormField<String>(
            hint: Text('खसरा नंबर',style: TextStyle(color: Colors.white,fontSize: 25.0),),
            elevation: 5,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 36.0,
            isExpanded: true,
            value: _khasraType,
            style: TextStyle(color: Colors.black),
            validator: (value) =>
            value == null ? 'This Field is Required' : null,
            onChanged: (value) {
              setState(() {
                _khasraType = value;
                if (_khasraType == 'VENDOR') {
                  _partyTypeController.text = 'V';
                } else if (_khasraType == 'FARMER') {
                  _partyTypeController.text = 'C';
                }
              });
            },
            items: khasrano.map((value) {
              return DropdownMenuItem(value: value, child: Text(value));
            }).toList(),
          ),
        ),
      ],
    );
  }









  Widget _buildZilaType() {
    return Row(
      children: [

        Expanded(
          flex: 1,
          child: DropdownButtonFormField<String>(
            hint: Text('जिला',style: TextStyle(color: Colors.white,fontSize: 25.0),),
            elevation: 5,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 36.0,
            isExpanded: true,
            value: _partyType,
            style: TextStyle(color: Colors.black),
            validator: (value) =>
            value == null ? 'This Field is Required' : null,
            onChanged: (value) {
              setState(() {
                _partyType = value;
                if (_partyType == 'VENDOR') {
                  _partyTypeController.text = 'V';
                } else if (_partyType == 'FARMER') {
                  _partyTypeController.text = 'C';
                }
              });
            },
            items: _parties.map((value) {
              return DropdownMenuItem(value: value, child: Text(value));
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildTehsilType() {
    return Row(
      children: [

        Expanded(
          flex: 1,
          child: DropdownButtonFormField<String>(
            hint: Text('तहसील',style: TextStyle(color: Colors.white,fontSize: 25.0),),
            elevation: 5,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 36.0,
            isExpanded: true,
            value: _partyType,
            style: TextStyle(color: Colors.black),
            validator: (value) =>
            value == null ? 'This Field is Required' : null,
            onChanged: (value) {
              setState(() {
                _partyType = value;
                if (_partyType == 'VENDOR') {
                  _partyTypeController.text = 'V';
                } else if (_partyType == 'FARMER') {
                  _partyTypeController.text = 'C';
                }
              });
            },
            items: _parties.map((value) {
              return DropdownMenuItem(value: value, child: Text(value));
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildgstRegistrationNo() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'खंड',
      ),
      controller: _gstNoController,
      onSaved: (String value) {
        _gstRegistrationNo = value;
      },
    );
  }

  Widget _buildGstRegistrationDate() {
    return GestureDetector(
      onTap: () => _selectDate(context),
      child: AbsorbPointer(
        child: TextFormField(
          decoration: InputDecoration(
            labelText: 'गाँव',
            /*icon: Icon(
              Icons.calendar_today,
              //color: kPrimaryColor,
            ),*/
          ),
          controller: _gstDateController,
          onSaved: (String value) {
            _gstRegistrationDate = value;
          },
        ),
      ),
    );
  }

  Widget _buildPanNumber() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'खसरा नंबर',
          /*icon: Icon(
            Icons.credit_card,
         //   color: kPrimaryColor,
          )*/),
      controller: _panNumberController,
      onSaved: (String value) {
        _panNumber = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            children: [Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),

         child: Column(

          children: [

            /*Container(
                height: 100.0,
               // color: kWhiteColor,
                width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
           image: AssetImage("assets/images/icon.png"),
       // fit: BoxFit.cover,
         ),
              ),
            ),*/
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100.00,
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.fromLTRB(0,0,4,0),
              child:
              Align(
                alignment: Alignment.bottomCenter,
                child: CircleAvatar(
                  //backgroundColor: kWhiteColor,
                  backgroundImage: AssetImage('assets/images/icon.png'),
                  radius: 50,
                ),
              ),

            ),


            Container(
                width: MediaQuery.of(context).size.width,
              height:100.0,
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              //alignment: Alignment.bottomCenter,
                child:
                Container(
                    color: Colors.transparent,
                    child:RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  color: Colors.transparent,
                  //textColor: Color(0xFFFFFFFF),
                  child: Text("किसान पंजीकरण",style: TextStyle(fontSize: 35,color: Colors.white),),
                ))
            ),

//jila in place gaon




    Container(
        width: MediaQuery.of(context).size.width,
    height: 100.00,
    alignment: Alignment.bottomRight,
    margin: EdgeInsets.fromLTRB(0,0,4,0),
      child:
      Align(
        alignment: Alignment.bottomRight,
        child: CircleAvatar(
          //backgroundColor: kWhiteColor,
          backgroundImage: AssetImage('assets/images/farmer_dp.jpg'),
          radius: 50,
        ),
      ),

    ),

            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Form(
                  key: _formKey,
                  autovalidate: _autoValidate,

                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.stretch,
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                   _buildRajyaType(),
                      SizedBox(height: 7.5),
                      _buildJilaType(),
                      SizedBox(height: 7.5),
                      _buildTehsillType(),
                      SizedBox(height: 7.5),
                      _buildKhandType(),
                      SizedBox(height: 7.5),
                      _buildVillageType(),
                      SizedBox(height: 7.5),
                      _buildKhasraType(),
                      Container(
                        child: new Text(
                          'परिवार का विवरण',style: TextStyle(fontSize: 25.0,color: Colors.white),
                          // style: buttonText,
                        ),
                      ),
                      //SizedBox(height: 40.0),
                      Container(

                        margin: const EdgeInsets.only(top: 10.0),
                        height: 100.0,

                        child: Row(children: <Widget>[
                        Flexible(
                        child: Container(
                          //width: MediaQuery.of(context).size.width,

                          child: Column(children: <Widget>[

                            Flexible(
                              flex: 2,
                              child:
                            Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(

                              //color: Colors.red,-dp
                              image: DecorationImage(
                                image: Image.asset('assets/images/User.png').image,
                              ),
                            ),),
    ),

                            Flexible(
                              flex: 1,
                            child: Container(
                              child: RaisedButton.icon(

                                //padding: EdgeInsets.symmetric(horizontal: 20.0),
                                //color: kPrimaryColor,
                                label: Text(
                                  '1',
                                  // style: buttonText,
                                ),

                                //onPressed: _buildMaleType,
                                icon: Icon(
                                  Icons.keyboard_arrow_right,
                                  //color: kWhiteColor,
                                  size: 30.0,
                                ),
                                ),
                              )),
                            ]),
                              ),
                            ),

                          Flexible(
                            child: Container(
                             // width: MediaQuery.of(context).size.width,
                              child: Column(children: <Widget>[
                                Flexible(
                                  flex: 2,
                                  child:
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      //color: Colors.red,-dp
                                      image: DecorationImage(
                                        image: Image.asset('assets/images/User.png').image,
                                      ),
                                    ),),
                                ),

                                Flexible(
                                    flex: 1,
                                    child: Container(
                                      child: RaisedButton.icon(
                                       // onPressed: _buildMaleType,
                                        //padding: EdgeInsets.symmetric(horizontal: 20.0),
                                        //color: kPrimaryColor,
                                        label: Text(
                                          '1',
                                          // style: buttonText,
                                        ),

                                        icon: Icon(
                                          Icons.keyboard_arrow_right,
                                          //color: kWhiteColor,
                                          size: 30.0,
                                        ),
                                      ),
                                    )

                                ),
                              ]),
                            ),
                          ),


                          Flexible(
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: Column(children: <Widget>[

                                Flexible(
                                  flex: 2,
                                  child:
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      //color: Colors.red,-dp
                                      image: DecorationImage(
                                        image: Image.asset('assets/images/User.png').image,
                                      ),
                                    ),),
                                ),

                                Flexible(
                                    flex: 1,
                                    child: Container(
                                      child: RaisedButton.icon(
                                        // onPressed: _buildMaleType,
                                        //padding: EdgeInsets.symmetric(horizontal: 20.0),
                                        //color: kPrimaryColor,
                                        label: Text(
                                          '1',
                                          // style: buttonText,
                                        ),

                                        icon: Icon(
                                          Icons.keyboard_arrow_right,
                                          //color: kWhiteColor,
                                          size: 30.0,
                                        ),
                                      ),
                                    )

                                ),

                              ]),
                            ),
                          ),
                        ],),
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 10.0,bottom: 5.0),
                      child: RaisedButton(


    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => WelcomeScreen(
   // userId: widget.userId,
    //userToken: widget.userToken,
    )));
    },
                        //padding: const EdgeInsets.only(top: 10.0,bottom: 10.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        color: Colors.transparent,
                        textColor: Color(0xFFFFFFFF),
                        child: Text("पंजीकरण  करें",style: TextStyle(fontSize: 30,color: Colors.white),),
                      )
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
            ],
        ),
      ),
    );
  }

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1901, 1),
        lastDate: DateTime(2100));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        //String Onlydate = new DateFormat('dd-MM-yyyy').format(picked);
        //date = '$Onlydate';
        _gstDateController.value = TextEditingValue(text: picked.toString());
      });
  }
}
