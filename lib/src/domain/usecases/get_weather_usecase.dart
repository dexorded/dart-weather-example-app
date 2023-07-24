import 'package:template_project/src/domain/entities/weather.dart';
import 'package:template_project/src/domain/repositories/weather_repository.dart';

class GetWeatherUseCase {
  final WeatherRepository weatherRepository;

  const GetWeatherUseCase({
    required this.weatherRepository,
  });

  Future<Weather> call({
    required String lat,
    required String lon,
  }) async {
    print('$lat $lon');

    return await weatherRepository.getWeather(
      lat: lat,
      lon: lon,
    );
  }
}
