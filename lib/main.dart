import 'package:Haritkranti/Auth/UI/LoginView.dart';
import 'package:Haritkranti/Routes/PageRoutes.dart';
import 'package:Haritkranti/Screens/HomeView.dart';
import 'package:Haritkranti/Themes/style.dart';
import 'package:Haritkranti/localization/SelectYourLanguage.dart';
import 'package:Haritkranti/map/village_mapping.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
    static void setLocale(BuildContext context, Locale locale){
    _MyAppState state = context.findAncestorStateOfType<_MyAppState>();
    state.setLocale(locale);
  }
  @override
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
   Locale _locale;

  void setLocale(Locale locale){
    setState(() {
      _locale = locale;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Haritkranti',
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      home: SelectYourlanguage(),
      routes: PageRoutes().routes(),
      locale: _locale,
      supportedLocales: [Locale('en', 'US'), Locale('hi', 'IN')],
    

      localizationsDelegates: [
        // Localization.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      localeResolutionCallback: (deviceLocale, supportedLocales) {
        for (var locale in supportedLocales) {
          if (locale.languageCode == deviceLocale.languageCode &&
              locale.countryCode == deviceLocale.countryCode) {
            return deviceLocale;
          }
        }
        return supportedLocales.first;
      },
    );
  }
}
