import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tretror/api/FeedCatalog.dart';
import 'package:tretror/components/ui/Post.dart';
import 'package:tretror/components/ui/PostLoading.dart';


class Posts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FeedCatalog(),
      child: Container(
          color: Colors.grey,
          child: Selector<FeedCatalog, int>(
              selector: (context, catalog) => catalog.itemCount,
              builder: (context, itemCount, child) => ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      var catalog = Provider.of<FeedCatalog>(context);
                      var craww = catalog.getByIndex(index);

                      if(craww.isLoading){
                        print("Loading index $index");
                        return PostLoading();
                      }

                      print("Returning a post $index");
                      return Post(craww);
                    },
                  ))),
    );
  }
}
