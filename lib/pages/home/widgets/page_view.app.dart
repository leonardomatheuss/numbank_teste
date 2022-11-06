

import 'package:flutter/material.dart';

import 'card_app.dart';

class PageViewApp extends StatelessWidget {
  final double top;
  final ValueChanged <int> onChanged;
  final GestureDragUpdateCallback onPanUpdate;

  const PageViewApp({super.key, required this.top, required this.onChanged, required this.onPanUpdate});

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeOut,
      top: top,
      height: MediaQuery.of(context).size.height * .55,
      left: 0,
      right: 0,
      // width: MediaQuery.of(context).size.width,
      child: GestureDetector(
        onPanUpdate:onPanUpdate,
        child: PageView(
          onPageChanged: onChanged  ,
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            CardApp(),
            CardApp(),
            CardApp(),
          ],
        ),
      ),
    );
  }
}
