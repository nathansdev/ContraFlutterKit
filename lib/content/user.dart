import 'dart:ui';

class InviteDetail {
  final String name;
  final String designation;
  final String profile;
  final bool isInvited;

  const InviteDetail(
      {required this.name,
      required this.designation,
      required this.profile,
      required this.isInvited});
}

class User {
  final String name;
  final String designation;
  final String profile;
  final Color bgColor;
  final Color textColor;

  const User(
      {required this.name,
      required this.designation,
      required this.profile,
      required this.textColor,
      required this.bgColor});
}
