import 'package:template_project/core/errors/errors.dart';
import 'package:template_project/src/data/datasources/open_map_datasource.dart';
import 'package:template_project/src/data/models/weather_model.dart';
import 'package:template_project/src/domain/repositories/weather_repository.dart';

class WeatherOpenMapRepositoriesImpl implements WeatherRepository {
  final OpenMapDatasource datasource = OpenMapDatasource();

  @override
  Future<WeatherModel> getWeather({
    required String lat,
    required String lon,
  }) async {
    try {
      final WeatherModel model = await datasource.postWeatherRequest(
        lat: lat,
        lon: lon,
      );

      return model;
    } catch (_) {
      throw BadRequest();
    }
  }
}
