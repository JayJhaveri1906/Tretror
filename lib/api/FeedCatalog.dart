import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tretror/model/Craww.dart';
import 'package:tretror/model/User.dart';

class FeedCatalog extends ChangeNotifier {
  static final List<Craww> _craws = [
    Craww(
      user: User(
        name: "Sundar Pichai",
        handle: "@sundarpichai",
        avatarUrl:
            "https://pbs.twimg.com/profile_images/864282616597405701/M-FEJMZ0_400x400.jpg",
      ),
      content: """#FlutterDayMeetups : San Fransisco

Taking place right before #flutterday
Session 2: 8PM PST""",
    ),

    Craww(
      user: User(
        name: "Sundar Pichai",
        handle: "@sundarpichai",
        avatarUrl:
            "https://pbs.twimg.com/profile_images/864282616597405701/M-FEJMZ0_400x400.jpg",
      ),
      content: """#HACK20 This looks exciting.. Retro!""",
    ),

    Craww(
      user: User(
        name: "Sundar Pichai",
        handle: "@sundarpichai",
        avatarUrl:
            "https://pbs.twimg.com/profile_images/864282616597405701/M-FEJMZ0_400x400.jpg",
      ),
      content: """We all know retro is the new cool""",
    ),


  ];


   List<Craww> get crawws => _craws;



}
