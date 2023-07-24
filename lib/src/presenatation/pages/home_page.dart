import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:template_project/src/data/repositories/weather_open_map_repository_impl.dart';
import 'package:template_project/src/domain/entities/weather.dart';
import 'package:template_project/src/domain/repositories/weather_repository.dart';
import 'package:template_project/src/domain/usecases/get_weather_usecase.dart';
import 'package:template_project/src/presenatation/pages/weather_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final WeatherRepository weatherRepository =
        WeatherOpenMapRepositoriesImpl();
    final GetWeatherUseCase getWeatherUseCase = GetWeatherUseCase(
      weatherRepository: weatherRepository,
    );

    String lat = '';
    String lon = '';

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9.]')),
                ],
                onChanged: (v) => lat = v,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16.0),
                    ),
                  ),
                  hintText: 'lat',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9.]')),
                ],
                onChanged: (v) => lon = v,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16.0),
                    ),
                  ),
                  hintText: 'lon',
                ),
              ),
            ),
            const Spacer(),
            FilledButton(
              onPressed: () async {
                final Weather weather = await getWeatherUseCase.call(
                  lat: lat,
                  lon: lon,
                );

                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => WeatherPage(
                      weather: weather,
                    ),
                  ),
                );
              },
              child: const Text('Find Weather'),
            ),
          ],
        ),
      ),
    );
  }
}
