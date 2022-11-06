import 'package:flutter/material.dart';

class MyDotsApp extends StatelessWidget {
  final int currentIndex;
  final double top;
  final double left;
  Color getcolor(int index) {
    return index == currentIndex ? Colors.white : Colors.white38;
  }

  const MyDotsApp(
      {super.key,
      required this.currentIndex,
      required this.top,
      required this.left});
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: Row(
        children: <Widget>[
          AnimatedContainer(
              duration: Duration(milliseconds: 300),
              height: 7,
              width: 7,
              decoration: BoxDecoration(
                color: getcolor(0),
                shape: BoxShape.circle,
              )),
          SizedBox(
            width: 8,
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            height: 7,
            width: 7,
            decoration: BoxDecoration(
              color: getcolor(1),
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            height: 7,
            width: 7,
            decoration: BoxDecoration(
              color: getcolor(2),
              shape: BoxShape.circle,
            ),
          )
        ],
      ),
    );
  }
}
