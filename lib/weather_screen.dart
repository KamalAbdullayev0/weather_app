import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app/hourly_forecast_item.dart';

import 'aditional_info_item.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App',
            style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Text(
                              '300 F',
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 16),
                            Icon(
                              Icons.cloud,
                              size: 64,
                            ),
                            SizedBox(height: 16),
                            Text('Rain', style: TextStyle(fontSize: 20)),
                          ],
                        ),
                      ),
                    ),
                  )),
            ),
            const SizedBox(height: 20),
            const Text('Weather Forecast',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HourlyForecastItem(
                    time: '12:00',
                    icon: Icons.cloud,
                    temperature: '30 F',
                  ),
                  HourlyForecastItem(
                    time: '13:00',
                    icon: Icons.cloud,
                    temperature: '31 F',
                  ),
                  HourlyForecastItem(
                    time: '14:00',
                    icon: Icons.cloud,
                    temperature: '32 F',
                  ),
                  HourlyForecastItem(
                    time: '15:00',
                    icon: Icons.cloud,
                    temperature: '33 F',
                  ),
                  HourlyForecastItem(
                    time: '16:00',
                    icon: Icons.cloud,
                    temperature: '34 F',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('Additional Forecast',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AditionalInforitem(
                  icon: Icons.water_drop,
                  label: 'Humidity',
                  value: '91 F',
                ),
                AditionalInforitem(
                  icon: Icons.air,
                  label: 'Wind speed',
                  value: '7.5 km/h',
                ),
                AditionalInforitem(
                  icon: Icons.beach_access,
                  label: 'Pressure',
                  value: '1013 hPa',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
