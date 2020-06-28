import 'package:flutter/material.dart';
import 'package:flutter95/flutter95.dart';
import 'package:tretror/components/ui/FeedIcon.dart';
import 'package:tretror/components/ui/RetroButton.dart';

class CrawwItPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold95(
      title: "Craww it!",
      body: Dialog(
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: Container(
            child: Column(
          children: <Widget>[
            Text(
              "What's that you want to craww about?",
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.bodyText1,
              textScaleFactor: 2,
            ),
            Elevation95(
              type: Elevation95Type.down,
              child: Container(
                color: Colors.white,
                child: TextField(
                  // controller: crawwtextController,
                  maxLines: 5,
                  decoration: const InputDecoration(
                    border: const OutlineInputBorder(),
                    contentPadding: const EdgeInsets.all(10.0),
                  ),
                ),
              ),
            ),
            Text(
              "Enter your craw in the above field, and when you're ready, hold your breath and press that craww button!",
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.bodyText1,
              textScaleFactor: 2,
            ),
          ],
        )),
      ),
    );
  }
}
