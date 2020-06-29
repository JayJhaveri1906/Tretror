import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter95/flutter95.dart';
//import 'package:tretror/components/pages/FeedsHome.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 10),
        () => Navigator.of(context).pushReplacementNamed("/feedsHome"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold95(
      title: "Loading...",
      body: DefaultTextStyle(
        style: Theme.of(context).textTheme.headline6,
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 100),
              Image(
                  image: AssetImage('assets/icons/logo/logo@2x.png'),
                  height: 60,
                  fit: BoxFit.fill),
              SizedBox(height: 50),
              Text(
                'Tretror',
                style: TextStyle(fontSize: 29),
              ),
              Text(
                'Just Kraw it!',
                style: TextStyle(color: Color(0xff767676), fontSize: 15),
              ),
              Padding(padding: EdgeInsets.all(25)),
              Elevation95(
                type: Elevation95Type.down,
                  child: Image(image: AssetImage('assets/gif/progressbar.gif')))
            ],
          ),
        ),
      ),
    );
  }
}
