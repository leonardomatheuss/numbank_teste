import 'package:flutter/material.dart';
import 'package:numbank_tutorial/pages/home/widgets/menu_app.dart';

import 'package:numbank_tutorial/pages/home/widgets/my_app_bar.dart';
import 'package:numbank_tutorial/pages/home/widgets/my_dots_app.dart';
import 'package:numbank_tutorial/pages/home/widgets/page_view.app.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showMenu = false;
  int _currentIndex = 0;
  double _YPosition = 0;

  @override
  void initState() {
    super.initState();
    _showMenu = false;
    _currentIndex = 0;
    _YPosition = 0;
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;
    if (_YPosition == null) {
      _YPosition = _screenHeight * .22;
    }

    return Scaffold(
        backgroundColor: Colors.purple[800],
        body: Stack(
          children: <Widget>[
            MyappBar(
              showMenu: _showMenu,
              onTap: () {
                setState(() {
                  _showMenu = !_showMenu;
                  _YPosition =
                      _showMenu ? _screenHeight * 0.65 : _screenHeight * .18;
                });
              },
            ),
            Menuapp(
              top: _screenHeight * 0.24,
              showMenu: _showMenu,

            ),
            PageViewApp(
              top:
                !_showMenu ?  _screenHeight * .22 : _screenHeight * .78,
              onChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              onPanUpdate: (details) {
                // double positionBottomLimit = _screenHeight * .78;
                double positiontopLimit = _screenHeight * .22;
                setState(() {
                  {
                    if (_YPosition >= positiontopLimit)
                    
                    _YPosition += details.delta.dy;
                  }
                });
              },
            ),
            MyDotsApp(
              left: 172,
              top: _screenHeight * .77,
              currentIndex: _currentIndex,
            )
          ],
        ));
  }
}
