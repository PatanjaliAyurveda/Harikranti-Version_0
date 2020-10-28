 
import 'package:flutter/material.dart';
import 'color.dart';

bool isDarkEnabled = false;

final ThemeData appTheme = ThemeData(
  scaffoldBackgroundColor: isDarkEnabled ? kBlackColor : kWhiteColor,
  primaryColor: kMainColor,
  accentColor: kMainColor,
  indicatorColor: kMainColor,
  bottomAppBarTheme: BottomAppBarTheme(color: kBlackColor),
  buttonTheme: ButtonThemeData(
    textTheme: ButtonTextTheme.normal,
    height: 33,
    padding: EdgeInsets.only(top: 0, bottom: 0, left: 16, right: 16),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        side: BorderSide(color: kMainColor)),
    alignedDropdown: false,
    buttonColor: kMainColor,
    disabledColor: kDisabledColor,
  ),
  appBarTheme: AppBarTheme(
    color: kTransparentColor,
    elevation: 0.0,
  ),
  textTheme: TextTheme(
      bodyText1: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 12.0,
          color: Colors.grey,
          letterSpacing: .5),
      headline1: TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: 20.0,
          color: kWhiteColor,
          letterSpacing: .1),
      headline2: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
          color: kBlackColor,
          letterSpacing: .1),
      headline3: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 14.0,
          color: kBlackColor,
          letterSpacing: .1),
      headline4: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 13.0,
          color: kTertiaryColor,
          letterSpacing: .1),
      headline5: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 12.0,
          color: kBlackColor,
          letterSpacing: .1),
      button: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 12.0,
        color: kWhiteColor,
      )),
);

final TextStyle pageHeading = TextStyle(
  fontWeight: FontWeight.w800,
  fontSize: 24.0,
  color: kBlackColor,
  letterSpacing: 1.0,
);

final TextStyle logoHeading = TextStyle(
  fontWeight: FontWeight.w700,
  fontSize: 24.0,
  color: kPrimaryColor,
);

final TextStyle logoSubHeading = TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 14.0,
  color: kBlackColor,
);

final TextStyle drawerSubHeading = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 14.0,
  color: kWhiteColor,
);

final TextStyle ctaText = TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 16.0,
  color: kPrimaryColor,
);

final TextStyle ctaSmallText = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 14.0,
  color: kPrimaryColor,
);

final TextStyle statusText = TextStyle(
  fontWeight: FontWeight.w400,
  fontSize: 12.0,
  color: kWhiteColor,
  letterSpacing: .2,
);

final TextStyle sheetHeading = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 18.0,
  color: kBlackColor,
  letterSpacing: .1,
);

final TextStyle buttonText = TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 18.0,
  color: kWhiteColor,
  letterSpacing: 1.0,
);

final TextStyle haritkranti = TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 15.0,
  color: kWhiteColor,
  letterSpacing: 1.0,
);