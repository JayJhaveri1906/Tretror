import 'package:flutter/material.dart';
import 'package:flutter95/flutter95.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tretror/components/ui/FeedIcon.dart';
import 'package:tretror/components/ui/RetroButton.dart';

class Post extends StatelessWidget {
  final String username;
  final String post;

  Post(this.username, this.post);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height:20),
        Elevation95(
          child: Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(4.0),
            // decoration: BoxDecoration(
            //   border: Border.all(),
            // ),
            child: Column(
              children: <Widget>[
                Container(
                  child: Text(
                    username,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
                Elevation95(
                  type: Elevation95Type.down,
                  child: Flexible(
                    child: Text(
                      post,
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.bodyText1,
                      textScaleFactor: 2,
                    ),
                  ),
                ),
                SizedBox(height:10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    RetroButton(child: FeedIcon(FeedIconType.Comment)),
                    RetroButton(child: FeedIcon(FeedIconType.Recraw)),
                    RetroButton(child: FeedIcon(FeedIconType.Heart)),
                    RetroButton(child: FeedIcon(FeedIconType.Bookmark)),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
