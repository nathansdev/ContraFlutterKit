import 'package:contraflutterkit/custom_widgets/size_widget.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SizesSelectWidget extends StatefulWidget {
  final List<String> filters;

  const SizesSelectWidget({this.filters});

  @override
  _SizesSelectWidgetState createState() => _SizesSelectWidgetState();
}

class _SizesSelectWidgetState extends State<SizesSelectWidget> {
  List<String> options = List();
  List<int> selectedChoices = List();

  @override
  void initState() {
    super.initState();
    options = widget.filters;
    selectedChoices.add(0);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Wrap(
        spacing: 12,
        children: List<Widget>.generate(
          options.length,
          (int index) {
            return SizeWidget(
              borderColor: wood_smoke,
              shadowColor: wood_smoke,
              text: options[index],
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
