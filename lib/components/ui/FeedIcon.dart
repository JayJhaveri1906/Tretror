import 'package:flutter/material.dart';

enum FeedIconType { Comment, Recraw, Heart, Bookmark }

class FeedIcon extends StatelessWidget {
  final FeedIconType iconType;

  FeedIcon(this.iconType);

  static final iconMap = {
    FeedIconType.Comment: AssetImage('assets/feed_icons/bookmark.png'),
    FeedIconType.Recraw: AssetImage('assets/feed_icons/recraw.png'),
    FeedIconType.Heart: AssetImage('assets/feed_icons/heart.png'),
    FeedIconType.Bookmark: AssetImage('assets/feed_icons/bookmark.png'),
  };

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Image(image: iconMap[iconType]),
    );
  }
}
