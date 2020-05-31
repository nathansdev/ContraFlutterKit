import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartAddRemoveButton extends StatefulWidget {
  @override
  _CartAddRemoveButtonState createState() => _CartAddRemoveButtonState();
}

class _CartAddRemoveButtonState extends State<CartAddRemoveButton> {
  int count;

  @override
  void initState() {
    super.initState();
    count = 0;
  }

  void onAddClicked() {
    setState(() {
      count = count + 1;
      print("add clicked " + count.toString());
    });
  }

  void onRemoveClicked() {
    setState(() {
      count = count - 1;
      print("remove clicked " + count.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 96,
      height: 36,
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              side: BorderSide(color: wood_smoke, width: 2))),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          count == 0
              ? SizedBox()
              : Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      onRemoveClicked();
                    },
                    child: Center(
                      child: IconButton(
                        alignment: Alignment.topCenter,
                        icon: Icon(Icons.remove),
                        onPressed: () {
                          onRemoveClicked();
                        },
                      ),
                    ),
                  ),
                ),
          count == 0
              ? Expanded(
                  flex: 2,
                  child: Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height,
                      color: lightening_yellow,
                      child: Text(
                        "Add",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: wood_smoke,
                            fontWeight: FontWeight.w800,
                            fontSize: 18),
                      )))
              : Expanded(
                  flex: 1,
                  child: Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height,
                      color: lightening_yellow,
                      child: Text(
                        count.toString(),
                        style: TextStyle(
                            color: wood_smoke,
                            fontWeight: FontWeight.w800,
                            fontSize: 18),
                      ))),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                onAddClicked();
              },
              child: Container(
                alignment: Alignment.topCenter,
                color: white,
                height: MediaQuery.of(context).size.height,
                child: Center(
                  child: IconButton(
                    alignment: Alignment.topCenter,
                    icon: Icon(Icons.add),
                    onPressed: () {
                      onAddClicked();
                    },
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
