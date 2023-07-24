import 'package:template_project/src/domain/repositories/weather_repository.dart';

class GetWeatherUseCase {
  final WeatherRepository weatherRepository;

  const GetWeatherUseCase({
    required this.weatherRepository,
  });

  Future<void> call({
    required String lat,
    required String lon,
  }) async {
    weatherRepository.getWeather(
      lat: lat,
      lon: lon,
    );
  }
}
