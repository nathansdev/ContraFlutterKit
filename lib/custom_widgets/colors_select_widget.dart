import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'color_widget.dart';

class ColorsSelectWidget extends StatefulWidget {
  final List<Color> colors;

  const ColorsSelectWidget({this.colors});

  @override
  _ColorsSelectWidgetState createState() => _ColorsSelectWidgetState();
}

class _ColorsSelectWidgetState extends State<ColorsSelectWidget> {
  List<Color> options = List();
  List<int> selectedChoices = List();

  @override
  void initState() {
    super.initState();
    options = widget.colors;
    selectedChoices.add(0);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0, top: 16.0),
      child: Wrap(
        spacing: 12,
        children: List<Widget>.generate(
          options.length,
          (int index) {
            return ColorWidget(
              bgColor: options[index],
              borderColor: wood_smoke,
              shadowColor: wood_smoke,
              selected: selectedChoices.contains(index),
              onTap: () {
                setState(() {
                  selectedChoices.contains(index)
                      ? selectedChoices.remove(index)
                      : selectedChoices.add(index);
                });
              },
            );
          },
        ).toList(),
      ),
    );
  }
}
