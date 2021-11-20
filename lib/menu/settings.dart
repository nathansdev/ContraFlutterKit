import 'dart:ui';

class Settings {
  String title;
  String text;
  bool enable;
  Color bgColor;
  Color textColor;

  Settings(
      {required this.title,
      required this.text,
      required this.enable,
      required this.bgColor,
      required this.textColor});
}

class SettingsCardDetail {
  String title;
  Color bgColor;
  Color borderColor;
  List<SettingsCardItemDetail> items;

  SettingsCardDetail(
      {required this.title,
      required this.bgColor,
      required this.borderColor,
      required this.items});
}

class SettingsCardItemDetail {
  String title;
  Color textColor;
  Color color;

  SettingsCardItemDetail(
      {required this.title, required this.color, required this.textColor});
}

class SettingsItem {
  String title;
  String description;
  bool enable;

  SettingsItem(
      {required this.title, required this.description, required this.enable});
}
