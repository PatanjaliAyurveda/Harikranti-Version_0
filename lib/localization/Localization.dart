
  // Widget _buildLanguage(){
  //   return DropdownButton(
  //     iconSize:30 ,
  //     hint: Text('Select Language'),
  //     items: Language.languageList().map<DropdownMenuItem<Language>>((e) => DropdownMenuItem(
  //       value: e,
  //       child: Text(e.name),
  //     )).toList(),
  //     onChanged: (Language language){
  //       _changeLanguage(language);
  //     }
  //     );


import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Localization {
  final Locale locale;

  Localization(this.locale);

  static Localization of(BuildContext context){
    return Localizations.of<Localization>(context, Localization);
  }

   Map<String, String> _localizedValues;

  Future load([locale]) async{
    String jsonStringValues = 
    await rootBundle.loadString('lib/localization/lang_json${locale.languageCode}.json');


    Map<String, dynamic> mappedJson = json.decode(jsonStringValues);
    _localizedValues =mappedJson.map((key, value) => MapEntry(key, value.toString()));

  }

  String getTranslatedValue(String key){
    return _localizedValues[key];
  }

    static const LocalizationsDelegate<Localization> delegate = _LocalizationDelegate();
  }

  class _LocalizationDelegate extends LocalizationsDelegate<Localization> {
    const _LocalizationDelegate();
  @override
  bool isSupported(Locale locale) {
      return ['en','hi'].contains(locale.languageCode);
    }
  
    @override
    Future<Localization> load(Locale locale) async {
      Localization localization = new Localization(locale);
      await localization.load();
      return localization;
    }
  
    @override
    bool shouldReload(LocalizationsDelegate old) => false;

  }