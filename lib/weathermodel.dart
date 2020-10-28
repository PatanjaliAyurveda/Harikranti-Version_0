import 'dart:math';
class WeatherModel {
  Coord coord;
  List<Weather> weather;
  String base;
  Main main;
  int visibility;
  Wind wind;
  Clouds clouds;
  DateTime  dt;
  Sys sys;
  int timezone;
  int id;
  String name;
  int cod;
  WeatherModel({this.weather, this.name, this.main, this.wind, this.dt});
  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    var list = json['weather'] as List;
    List<Weather> weatherList = list.map((i) => Weather.fromJson(i)).toList();
    return WeatherModel(
      weather: weatherList,
      name: json['name'],
      main: Main.fromJson(
        json['main'],
      ),
      wind: Wind.fromJson(json['wind']),
      dt:new DateTime.fromMillisecondsSinceEpoch(json['dt'] * 1000, isUtc: false),
    );
  }
}

class Coord {
  double lon;
  double lat;
}

class Weather {
  int id;
  String main;
  String decscription;
  String icon;

  Weather({this.main, this.icon});

  Weather.fromJson(Map<String, dynamic> json) {
    main = json['main'];
    icon = json['icon'];
  }
}

class Main {
  int temp;
  double feelLike;
  int tempMin;
  int tempMax;
  int pressure;
  int humidity;

  Main({this.temp, this.tempMin, this.tempMax, this.humidity});

  factory Main.fromJson(Map<String, dynamic> json) 
  {
    return Main(
      temp: json["temp"] is double
          ? (json['temp'] as double).toInt()
          : json['temp'],

      tempMin: json["temp_min"] is double
          ? (json['temp_min'] as double).toInt()
          : json['temp_min'],
      tempMax: json["temp_max"] is double
          ? (json['temp_max'] as double).toInt()
          : json['temp_max'],
      humidity: json['humidity'],
    );
  }
}

class Wind {
  int speed;
  int deg;
  Wind({this.speed});

  factory Wind.fromJson(Map<String, dynamic> json) {
    return Wind(
      speed:  json["speed"] is double
          ? (json['speed'] as double).toInt()
          : json['speed'],
    );
  }
}

class Clouds {
  int all;
}

class Sys {
  int type;
  int id;
  String country;
  double sunrise;
  double sunset;
}
