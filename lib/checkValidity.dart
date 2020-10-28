import 'package:flutter/material.dart';

bool validAndSave(GlobalKey<FormState> key) {
  final form = key.currentState;
  print("going 1");
  if (form.validate()) {
    form.save();
    print("going 2 true");
    return true;
  }

  return false;
}

void validateAndSubmit(GlobalKey<FormState> key, dynamic checkApi) {
  if (validAndSave(key)) {
    try {
      print("going 3");
      checkApi();

      print("going 5");
    } catch (err) {
      print("Error: $err");
    }
  }
}

dynamic phoneNumberValid(String value) {
  print("dfg" + value + "sdf");
  if (value.isEmpty)
    return 'Phone Number is requred,';
  else if (value.length != 10) return 'Please enter a valid phone number';
}

dynamic validateName(String value, String type) {
  if (value.isEmpty) return '$type name is requred,';
  final RegExp nameExp = RegExp(r'^[A-Za-z ]+$');
  if (!nameExp.hasMatch(value))
    return 'Please enter only alphabetical character.';
}

dynamic amountValid(String value) {
  print("dfg" + value + "sdf");
  if (value.isEmpty) return 'Enter the money here';
}
