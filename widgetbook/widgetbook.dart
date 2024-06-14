import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:contraflutterkit/login/contra_text.dart';

class HotReload extends StatelessWidget {
  const HotReload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook(
      appInfo: AppInfo(name: "Contra Flutter Kit Widget Book"),
      categories: [
        WidgetbookCategory(name: "Text", widgets: [
          WidgetbookWidget(
            name: "&ContraText",
            useCases: [
              WidgetbookUseCase(
                builder: (context) {
                  return ContraText(
                    alignment: Alignment.bottomCenter,
                    text: 'Hello',
                  );
                },
                name: 'Contra Text',
              )
            ],
          )
        ], folders: [
          WidgetbookFolder(name: "Hi", widgets: [
            WidgetbookWidget(name: "text", useCases: [
              WidgetbookUseCase(
                builder: (context) {
                  return Text(
                    "Text",
                    style: TextStyle(color: Colors.white),
                  );
                },
                name: 'Text',
              )
            ])
          ])
        ])
      ],
    );
  }
}
