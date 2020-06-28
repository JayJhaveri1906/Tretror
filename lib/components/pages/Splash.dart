import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter95/flutter95.dart';
import 'package:tretror/components/pages/FeedsHome.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacementNamed("/feedsHome"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold95(
      title: "Loading...",
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(25.0),
                ),
                Image.network('https://hemmy.xyz/tretror/logo.png',
                    height: 60, fit: BoxFit.fill),
                Padding(
                  padding: EdgeInsets.all(16.0),
                ),
                Text(
                  'Tretror',
                  style: TextStyle(fontSize: 29),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Text(
                  'Just Kraw it!',
                  style: TextStyle(color: Color(0xff767676), fontSize: 15),
                ),
                Padding(padding: EdgeInsets.all(25.0)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
