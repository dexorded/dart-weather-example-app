import 'package:dio/dio.dart';
import 'package:template_project/src/data/models/weather_model.dart';

class OpenMapDatasource {
  static const serverPath = 'https://api.openweathermap.org/data/3.0/onecall';

  final Dio client = Dio();

  Future<WeatherModel> postWeatherRequest({
    required String lat,
    required String lon,
  }) async {
    final Response response = await client.get(serverPath, data: {
      'lat': lat,
      'lon': lon,
    });

    return WeatherModel.fromJson(response.data);
  }
}
