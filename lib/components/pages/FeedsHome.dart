import 'package:flutter/material.dart';
import 'package:flutter95/flutter95.dart';
import 'package:tretror/components/ui/Posts.dart';


class FeedsHome extends StatelessWidget {
  FeedsHome({Key key}) : super(key: key);

  final String title = "TRETROR";

  @override
  Widget build(BuildContext context) {
    //
    return Scaffold95(
      title: title,
      toolbar: Toolbar95(
        actions: [
          Item95(
              label: 'Kraa',
              menu: Menu95(
                items: [
                  MenuItem95(
                    value: 1,
                    label: 'New Craa',
                  )
                ],
                onItemSelected: (item) {},
              )),
          Item95(
            label: 'Search',
            onTap: (context) {},
          ),
          Item95(
            label: 'Notifications',
            onTap: (context) {},
          ),
          Item95(
            label: 'Messages',
            onTap: (context) {},
          ),
        ],
      ),
      body: Expanded(child: Posts()),
    );
  }
}
