import 'package:flutter/material.dart';
import 'package:motivation/screens/feeling_section.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blue[200],
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.blue[700],
            title: Text(
              "TODAY'S MOTIVATION",
              style:
                  TextStyle(fontWeight: FontWeight.w700, color: Colors.white),
            ),
          ),
          body: FeelingSection(),
        ),
      ),
    );
  }
}
