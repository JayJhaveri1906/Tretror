import 'package:flutter/material.dart';
import 'package:flutter95/flutter95.dart';
import 'package:tretror/components/ui/FeedIcon.dart';
import 'package:tretror/components/ui/RetroButton.dart';
import 'package:tretror/model/Craww.dart';

class Post extends StatefulWidget {
  final String username;
  final String crawwContent;
  final String avatarUrl;

  Post(Craww craww)
      : username = craww?.user?.name,
        crawwContent = craww?.content,
        avatarUrl = craww?.user?.avatarUrl;

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  bool isHearted = false;

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
              widget.username ?? "",
              style: Theme.of(context).textTheme.headline6,
              textScaleFactor: 0.7,
            ),
          ),
          leading: InkWell(
              child: Elevation95(
                type: Elevation95Type.up,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(widget.avatarUrl),
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed("/profile");
              }),
          subtitle: Column(
            children: <Widget>[
              Elevation95(
                type: Elevation95Type.down,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Flexible(
                    child: Text(
                      widget.crawwContent ?? "",
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
                  RetroButton(
                    isDown: isHearted,
                    child: FeedIcon(FeedIconType.Heart),
                    onPressed: () {
                      setState(
                        () {
                          isHearted = !isHearted;
                        },
                      );
                    },
                  ),
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
