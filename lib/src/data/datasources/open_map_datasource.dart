import 'package:http/http.dart' as http;
// import 'package:dio/dio.dart';
import 'package:template_project/src/data/models/weather_model.dart';

class OpenMapDatasource {
  static const serverPath = 'https://api.openweathermap.org/data/3.0/onecall';
  static const key = 'f0a05a07b491b12e551d043238a8cf73';

  // final Dio client = Dio();

  Future<WeatherModel> postWeatherRequest({
    required String lat,
    required String lon,
  }) async {
    var url = Uri.https(
      'api.openweathermap.org',
      'data/2.8/onecall',
      {
        'appid': key,
        'lat': lat,
        'lon': lon,
      },
    );

    final http.Response response = await http.get(url);

    // print('Response status: ${response.statusCode}');
    // print('Response body: ${response.body}');

    return WeatherModel.fromJson(response.body);
  }
}
