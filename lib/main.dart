import 'package:flutter/material.dart';
import 'package:tretror/components/pages/FeedsHome.dart';
import 'package:tretror/components/pages/Splash.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'tRetRor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FeedsHome(),
    );
  }
}


