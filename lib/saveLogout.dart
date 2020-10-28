import 'package:shared_preferences/shared_preferences.dart';

saveLogout() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();

  await preferences.setString('LastUserPhone', null);
  await preferences.setString('LastToken', null);
  await preferences.setString('LastsId', null);
  await preferences.setString('Role', null);
}
