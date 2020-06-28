import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tretror/api/FeedCatalog.dart';
import 'package:tretror/components/ui/Post.dart';
import 'package:tretror/components/ui/PostLoading.dart';

class Posts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: ListView.builder(
        itemCount: Provider.of<FeedCatalog>(context).crawws.length,
        itemBuilder: (context, index) {
          var catalog = Provider.of<FeedCatalog>(context);
          var craww = catalog.crawws[index];

          if (craww.isLoading) {
            print("Loading index $index");
            return PostLoading();
          }

          return Post(craww);
        },
      ),
    );
  }
}
