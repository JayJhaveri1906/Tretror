import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
        textTheme: GoogleFonts.vt323TextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: FeedsHome(),
    );
  }
}
