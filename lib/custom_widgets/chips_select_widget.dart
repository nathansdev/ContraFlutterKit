import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChipsFilterWidget extends StatefulWidget {
  final List<String> filters;

  const ChipsFilterWidget({this.filters});

  @override
  _ChipsFilterWidgetState createState() => _ChipsFilterWidgetState();
}

class _ChipsFilterWidgetState extends State<ChipsFilterWidget> {
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
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
      child: Wrap(
        spacing: 12,
        children: List<Widget>.generate(
          options.length,
          (int index) {
            return ChoiceChip(
              disabledColor: white,
              selectedColor: pastel_pink,
              padding: EdgeInsets.all(12),
              avatarBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                  side: BorderSide(color: wood_smoke, width: 2)),
              label: Text(
                options[index],
                style: TextStyle(
                    color: wood_smoke,
                    fontWeight: FontWeight.w800,
                    fontSize: 12),
              ),
              selected: selectedChoices.contains(index),
              onSelected: (bool selected) {
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
