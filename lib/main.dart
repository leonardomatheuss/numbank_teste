import 'package:flutter/material.dart';
import 'package:numbank_tutorial/pages/home_page.dart';
import 'package:flutter/services.dart';

void main() {

SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.purple[800],
    ),
  );


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nubank Design Inspiration',
      theme: ThemeData(
       
        primarySwatch: Colors.purple,
        brightness: Brightness.dark
      ),
      home: HomePage()
    );
  }
}

