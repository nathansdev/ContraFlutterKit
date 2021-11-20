import 'dart:ui';

class PaymentType {
  final String type;
  final String price;
  final Color color;
  final Color buttonColor;
  final Color buttonTextColor;
  final List<String> list;

  const PaymentType(
      {required this.type,
      required this.price,
      required this.color,
      required this.list,
      required this.buttonColor,
      required this.buttonTextColor});
}

class CardDetail {
  final String type;
  final String number;
  final String user_name;
  final Color color;

  const CardDetail(
      {required this.type,
      required this.number,
      required this.user_name,
      required this.color});
}
