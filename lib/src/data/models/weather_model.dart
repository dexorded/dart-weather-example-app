import 'dart:convert';

import 'package:template_project/src/domain/entities/weather.dart';

class WeatherModel extends Weather {
  WeatherModel({
    required super.lat,
    required super.lon,
    required super.timezone,
    required super.feelsLike,
    required super.humidity,
    required super.windSpeed,
  });

  factory WeatherModel.fromMap(Map<String, dynamic> map) {
    return WeatherModel(
      lat: (map['lat'] as double).toString(),
      lon: (map['lon'] as double).toString(),
      timezone: map['timezone'] as String,
      feelsLike: (map['current']['feels_like'] as double).toString(),
      humidity: (map['current']['humidity'] as double).toString(),
      windSpeed: (map['current']['wind_speed'] as double).toString(),
    );
  }

  factory WeatherModel.fromJson(String source) {
    return WeatherModel.fromMap(json.decode(source) as Map<String, dynamic>);
  }
}
