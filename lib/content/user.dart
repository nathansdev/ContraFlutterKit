import 'dart:ui';

class InviteDetail {
  final String name;
  final String designation;
  final String profile;
  final bool isInvited;

  const InviteDetail(
      {this.name, this.designation, this.profile, this.isInvited});
}

class User {
  final String name;
  final String designation;
  final String profile;
  final Color bgColor;
  final Color textColor;

  const User({this.name, this.designation, this.profile, this.textColor,this.bgColor});
}
