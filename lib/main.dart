import 'package:bodymassindex/constants.dart';
import 'package:bodymassindex/Screens/input_page.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
    );
  }
}
