import 'package:flutter/material.dart';
import 'pages/artboard.dart';

class App extends StatefulWidget{
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Artboard(),
    );
  }
}