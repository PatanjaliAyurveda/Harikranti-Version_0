
import 'package:Haritkranti/localization/Localization.dart';
import 'package:flutter/material.dart';

String getTranslated(BuildContext context, String key){
  return Localization.of(context).getTranslatedValue(key);
}


// const String ENGLISH = 'en';
// const String HINDI ='hi';
