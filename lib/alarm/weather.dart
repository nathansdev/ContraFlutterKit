import 'dart:ui';

class Weather {
  String country;
  String city;
  String time;
  String image;
  String am_pm;
  String degree;
  Color color;

  Weather(
      {required this.country,
      required this.city,
      required this.am_pm,
      required this.time,
      required this.color,
      required this.image,
      required this.degree});
}

class WeatherDate {
  String day;
  String image;
  Color color;

  WeatherDate({required this.day, required this.color, required this.image});
}
