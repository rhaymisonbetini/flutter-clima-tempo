import 'package:flutter/material.dart';

class WeaterLocations {
  final String city;
  final String dateTime;
  final String temperature;
  final String weatherType;
  final String iconUrl;
  final int wind;
  final int rain;
  final int humidty;
  final double box1;
  final double box2;
  final double box3;

  WeaterLocations({
    @required this.city,
    @required this.dateTime,
    @required this.temperature,
    @required this.weatherType,
    @required this.iconUrl,
    @required this.wind,
    @required this.rain,
    @required this.humidty,
    @required this.box1,
    @required this.box2,
    @required this.box3,
  });
}

final locationList = [
  WeaterLocations(
    city: 'Aracaju',
    dateTime: '07:50 PM — Domingo, 07 de Março de  2021',
    temperature: '24\u2103',
    weatherType: 'Noite',
    iconUrl: 'assets/moon.svg',
    wind: 10,
    rain: 2,
    humidty: 10,
    box1: 23,
    box2: 35,
    box3: 46,
  ),
  WeaterLocations(
    city: 'São Paulo',
    dateTime: '02:20 PM —  Domingo, 07 de Março de  2021',
    temperature: '15\u2103',
    weatherType: 'Nublado',
    iconUrl: 'assets/cloudy.svg',
    wind: 8,
    rain: 7,
    humidty: 82,
    box1: 13,
    box2: 34,
    box3: 23,
  ),
  WeaterLocations(
    city: 'Vitoria',
    dateTime: '09:20 AM —  Domingo, 07 de Março de  2021',
    temperature: '17\u2103',
    weatherType: 'Sol',
    iconUrl: 'assets/sun.svg',
    wind: 5,
    rain: 15,
    humidty: 61,
    box1: 45,
    box2: 22,
    box3: 42,
  ),
  WeaterLocations(
    city: 'Rio de Janeiro',
    dateTime: '01:20 AM —  Domingo, 07 de Março de  2021',
    temperature: '10\u2103',
    weatherType: 'Chuvoso',
    iconUrl: 'assets/rain.svg',
    wind: 20,
    rain: 70,
    humidty: 91,
    box1: 12,
    box2: 43,
    box3: 23,
  ),
];
