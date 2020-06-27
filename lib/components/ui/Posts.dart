import 'package:flutter/material.dart';
import 'package:tretror/components/ui/Post.dart';

class Posts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      children: <Widget>[
        Post("Sundar Pichai", """#FlutterDayMeetups: San Fransisco
Taking place right before #flutterday
Session 2: 8PM PST"""),
        Post("Sundar Pichai",
            "Two Flutter Day Metups  blah blah blha \n another line of blah"),
        Post("Sundar Pichai",
            "Three Flutter Day Metups  blah blah blha \n another line of blah"),
        Post("Sundar Pichai",
            "Four Flutter Day Metups  blah blah blha \n another line of blah"),
        Post("Sundar Pichai",
            "Four Flutter Day Metups  blah blah blha \n another line of blah"),
        Post("Sundar Pichai",
            "Four Flutter Day Metups  blah blah blha \n another line of blah"),
        Post("Sundar Pichai",
            "Four Flutter Day Metups  blah blah blha \n another line of blah"),
      ],
    ));
  }
}
