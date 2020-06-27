import 'package:flutter/material.dart';
import 'package:flutter95/flutter95.dart';
import 'package:tretror/components/ui/FeedIcon.dart';
import 'package:tretror/components/ui/RetroButton.dart';

class Post extends StatelessWidget {
  final String username;
  final String post;

  Post(this.username, this.post);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      child: Column(
        children: <Widget>[
          Text(
            username,
            style: Flutter95.headerTextStyle,
          ),
          Elevation95(
            type: Elevation95Type.down,
            child: Flexible(
              child: Text(
                post,
                textAlign: TextAlign.left,
                style: Flutter95.textStyle,
              ),
            ),
          ),
          Row(
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
    );
  }
}
