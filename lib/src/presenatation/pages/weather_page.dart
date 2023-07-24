import 'package:flutter/material.dart';
import 'package:template_project/src/domain/entities/weather.dart';

class WeatherPage extends StatelessWidget {
  final Weather weather;

  const WeatherPage({
    super.key,
    required this.weather,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text(
                '${weather.feelsLike}°F',
                style: const TextStyle(
                  fontSize: 32.0,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              children: [
                Text('Timezone: ${weather.timezone}'),
                Text('Wind Speed: ${weather.windSpeed}'),
                Text('Humidity: ${weather.humidity}'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
