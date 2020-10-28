import 'package:http/http.dart' as http;

import 'dart:convert';

import 'package:Haritkranti/weathermodel.dart';

class Repository {
Future<WeatherModel> getWeather() async {
    var response = await http.get(
        'http://api.openweathermap.org/data/2.5/weather?zip=249405,in&units=metric&appid=664913f5ddb12a56230ed1d59f171017');
    var weatherData = WeatherModel();

    if (response.statusCode == 200) {
      var weatherDataJson = json.decode(response.body);
      weatherData = WeatherModel.fromJson(weatherDataJson);
    }

    return weatherData;
  }


}