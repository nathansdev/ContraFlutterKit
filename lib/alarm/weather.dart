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
      {this.country,
      this.city,
      this.am_pm,
      this.time,
      this.color,
      this.image,
      this.degree});
}

class WeatherDate {
  String day;
  String image;
  Color color;

  WeatherDate({this.day, this.color, this.image});
}
