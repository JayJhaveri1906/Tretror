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
    return Dialog(
      elevation: 0,
      insetPadding: EdgeInsets.only(
        left: 10,
        right: 10,
        bottom: 20,
      ),
      child: Elevation95(
        child: ListTile(
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              username,
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          leading: CircleAvatar(
            backgroundImage: NetworkImage("https://srv4.imgonline.com.ua/result_img/imgonline-com-ua-8bit-Picture-jyi4Zy39RNCZf.png"),
          ),
          subtitle: Column(
            children: <Widget>[
              Elevation95(
                type: Elevation95Type.down,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Flexible(
                    child: Text(
                      post,
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.bodyText1,
                      textScaleFactor: 2,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RetroButton(child: FeedIcon(FeedIconType.Comment)),
                  RetroButton(child: FeedIcon(FeedIconType.Recraw)),
                  RetroButton(child: FeedIcon(FeedIconType.Heart)),
                  RetroButton(child: FeedIcon(FeedIconType.Bookmark)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
