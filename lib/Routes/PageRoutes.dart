
import 'package:Haritkranti/Screens/Layout.dart';
import 'package:flutter/widgets.dart';

class PageRoutes {
  static const String layoutView = 'layoutView';
  
  Map<String, WidgetBuilder> routes() {
    return {
      layoutView: (context) => Layout(),
    };
  }
}
