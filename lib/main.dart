import 'package:flutter/material.dart';
import 'package:flutter_web/big_screen.dart';
import 'package:flutter_web/responsive_widget.dart';
import 'package:flutter_web/small_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // is not restarted.
        fontFamily: 'Quicksands' ,
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      smallScreen: SmallScreen(),
      bigScreen: BigScreen(),
    );
  }
}
