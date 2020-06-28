import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:tretror/api/FeedCatalog.dart';
import 'package:tretror/components/pages/FeedsHome.dart';
import 'package:tretror/components/pages/Splash.dart';
import 'package:tretror/components/pages/ProfilePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FeedCatalog(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'tRETROr',
        routes: {
          '/feedsHome': (context) => FeedsHome(),
          '/profile': (context) => ProfilePage(),
        },
        theme: ThemeData(
          primarySwatch: Colors.blue,
          // dialogBackgroundColor: Colors.transparent,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: TextTheme(
            headline1: GoogleFonts.pressStart2p(
                textStyle: Theme.of(context).textTheme.headline1),
            headline2: GoogleFonts.pressStart2p(
                textStyle: Theme.of(context).textTheme.headline2),
            headline3: GoogleFonts.pressStart2p(
                textStyle: Theme.of(context).textTheme.headline3),
            headline4: GoogleFonts.pressStart2p(
                textStyle: Theme.of(context).textTheme.headline4),
            headline5: GoogleFonts.pressStart2p(
                textStyle: Theme.of(context).textTheme.headline5),
            headline6: GoogleFonts.pressStart2p(
                textStyle: Theme.of(context).textTheme.headline6),
            bodyText1: GoogleFonts.vt323(
                textStyle: Theme.of(context).textTheme.bodyText1),
            bodyText2: GoogleFonts.vt323(
                textStyle: Theme.of(context).textTheme.bodyText1),
          ),
        ),
        home: SplashScreen(),
      ),
    );
  }
}
