import 'package:flutter/material.dart';
import 'package:grow_more/manager/text_style_manager.dart';

class MyTabs extends StatelessWidget {
  const MyTabs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs: <Widget>[
        Tab(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Responses',
                  style: appFonts.f14bluegrey,
                ),
                Text(
                  '(02)',
                  style: appFonts.f12grey,
                )
              ],
            ),
          ),
        ),
        Tab(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Database',
                  style: appFonts.f14bluegrey,
                ),
                Text(
                  '(21345)',
                  style: appFonts.f12grey,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
