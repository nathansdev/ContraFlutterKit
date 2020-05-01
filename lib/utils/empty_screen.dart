import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmptyState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Center(
          child: Text("Coming soon!"),
        ),
      ),
    );
  }
}
