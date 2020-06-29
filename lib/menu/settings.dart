import 'dart:ui';

class Settings {
  String title;
  String text;
  bool enable;
  Color bgColor;
  Color textColor;

  Settings({this.title, this.text, this.enable, this.bgColor, this.textColor});
}

class SettingsCardDetail {
  String title;
  Color bgColor;
  Color borderColor;
  List<SettingsCardItemDetail> items;

  SettingsCardDetail({this.title, this.bgColor, this.borderColor, this.items});
}

class SettingsCardItemDetail {
  String title;
  Color textColor;
  Color color;

  SettingsCardItemDetail({this.title, this.color, this.textColor});
}

class SettingsItem {
  String title;
  String description;
  bool enable;

  SettingsItem({this.title, this.description, this.enable});
}
