import 'dart:convert';

import 'package:flutter/foundation.dart';

class weatherModel {
  final String cityName;
  final String updated;
  final String? images;
  final String temp;
  final String maxtemp;
  final String mintemp;
  final String WeatherCod;

  weatherModel({
    required this.cityName,
    required this.updated,
    this.images,
    required this.temp,
    required this.maxtemp,
    required this.mintemp,
    required this.WeatherCod,
  });

  factory weatherModel.fromJson(value) {
    return weatherModel(
        cityName: value['location']['name'],
        updated: value['current']['last_updated'],
        temp: value['forecast']['forecastday'][0]['day']['avgtemp_c'],
        maxtemp: value['forecast']['forecastday'][0]['day']['maxtemp_c'],
        mintemp: value['forecast']['forecastday'][0]['day']['mintemp_c'],
        WeatherCod: value['forecast']['forecastday'][0]['day']['condition']['text'],
      );
  }
}
