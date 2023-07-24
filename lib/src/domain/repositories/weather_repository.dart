import 'package:template_project/src/domain/entities/weather.dart';

abstract class WeatherRepository {
  Future<Weather> getWeather({
    required String lat,
    required String lon,
  });
}
