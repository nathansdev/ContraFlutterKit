import 'package:contraflutterkit/custom_widgets/contra_button.dart';
import 'package:contraflutterkit/custom_widgets/contra_button_round.dart';
import 'package:contraflutterkit/custom_widgets/custom_app_bar.dart';
import 'package:contraflutterkit/login/contra_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailScreenGridPage extends StatefulWidget {
  @override
  _DetailScreenGridPageState createState() => _DetailScreenGridPageState();
}

class _DetailScreenGridPageState extends State<DetailScreenGridPage> {
  List<Color> bgs = List<Color>();

  @override
  void initState() {
    super.initState();
    bgs.add(flamingo);
    bgs.add(lightening_yellow);
    bgs.add(pastel_pink);
    bgs.add(carribean_green);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                CustomAppBar(
                  height: 100,
                  child: Row(
                    children: <Widget>[],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ContraText(
                    color: trout,
                    size: 17,
                    alignment: Alignment.center,
                    text: "SIMPLE TAG ",
                    textAlign: TextAlign.center,
                    weight: FontWeight.w800,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 12),
                  child: ContraText(
                    color: wood_smoke,
                    size: 36,
                    weight: FontWeight.w800,
                    alignment: Alignment.center,
                    text: "Contra wireframe kit dude, yeah!!",
                    textAlign: TextAlign.center,
                  ),
                ),
                GridView.builder(
                    padding: EdgeInsets.all(24),
                    gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: (1 / 1),
                    ),
                    controller: new ScrollController(keepScrollOffset: false),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        child: Center(
                            child: SvgPicture.asset(
                                "assets/icons/placeholder_icon.svg")),
                        decoration: ShapeDecoration(
                            color: bgs[index],
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16)))),
                      );
                    }),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: ContraButton(
                    isPrefix: false,
                    isSuffix: false,
                    text: "Let's get it done",
                    color: wood_smoke,
                    height: 60,
                    textColor: white,
                    shadowColor: wood_smoke,
                    callback: () {},
                    borderColor: wood_smoke,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 24,
            top: 56,
            child: ContraButtonRound(
              size: 48,
              iconPath: "assets/icons/close.svg",
              borderColor: black,
              shadowColor: black,
              color: white,
              callback: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ],
      ),
    );
  }
}
