import 'package:flutter/material.dart';
import 'package:regina/tabs.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Caashiere',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: TabsScreen(),
    );
  }
}