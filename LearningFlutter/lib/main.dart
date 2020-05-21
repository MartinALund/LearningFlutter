import 'package:LearningFlutter/widgets/BottomNavWidget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColorDark: Colors.red[800],
        primaryColor: Colors.red[500],
        accentColor: Colors.orange[200],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BottomNavWidget(),
    );
  }
}
