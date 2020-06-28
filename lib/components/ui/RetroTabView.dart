import 'package:flutter/material.dart';
import 'package:flutter95/flutter95.dart';
//import 'package:tretror/components/ui/Posts.dart';
import 'package:tretror/components/ui/RetroButton.dart';
import 'package:tretror/components/ui/RetroTab.dart';

class RetroTabView extends StatefulWidget {
  final List<RetroTab> tabs;

  RetroTabView({this.tabs});

  @override
  _RetroTabViewState createState() => _RetroTabViewState();
}

class _RetroTabViewState extends State<RetroTabView> {
  RetroTab selectedTab;

  @override
  Widget build(BuildContext context) {
    return Elevation95(
      child: Container(
        child: Column(
          children: <Widget>[
            Row(
              children: widget.tabs
                  .map(
                    (tab) => Expanded(
                      child: RetroButton(
                        text: tab.tabHeader,
                        onPressed: () {
                          setState(() {
                            selectedTab = tab;
                          });
                        },
                      ),
                    ),
                  )
                  .toList(),
            ),
            Container(child: selectedTab?.body)
          ],
        ),
      ),
    );
  }
}
