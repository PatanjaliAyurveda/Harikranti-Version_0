import 'package:shared_preferences/shared_preferences.dart';

getToken() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  String getToken = preferences.getString("LastToken");
  return getToken;
}
// check the error
// use await in front of String getToken;