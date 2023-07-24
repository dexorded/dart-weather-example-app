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

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lat': lat,
      'lon': lon,
      'timezone': timezone,
      'feelsLike': feelsLike,
      'humidity': humidity,
      'windSpeed': windSpeed,
    };
  }

  factory WeatherModel.fromMap(Map<String, dynamic> map) {
    return WeatherModel(
      lat: map['lat'] as String,
      lon: map['lon'] as String,
      timezone: map['timezone'] as String,
      feelsLike: map['feelsLike'] as String,
      humidity: map['humidity'] as String,
      windSpeed: map['windSpeed'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory WeatherModel.fromJson(String source) {
    return WeatherModel.fromMap(json.decode(source) as Map<String, dynamic>);
  }
}
