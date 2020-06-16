import 'dart:ui';

class PaymentType {
  final String type;
  final String price;
  final Color color;
  final Color buttonColor;
  final Color buttonTextColor;
  final List<String> list;

  const PaymentType({this.type, this.price, this.color, this.list,this.buttonColor,this.buttonTextColor});
}

class CardDetail {
  final String type;
  final String number;
  final String user_name;
  final Color color;

  const CardDetail({this.type, this.number, this.user_name,this.color});
}
