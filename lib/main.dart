import 'package:flutter/material.dart';
import './screens/home.dart';
import './screens/second.dart';
import './screens/third.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Navigation',
      routes: <String, WidgetBuilder>{
        // all available pages
        '/home': (BuildContext context) => new Home(),
        '/second': (BuildContext context) => new Second(null),
        '/third': (BuildContext context) => new Third(),
      },
      home: new Home(), // first page displayed
    );
  }

}