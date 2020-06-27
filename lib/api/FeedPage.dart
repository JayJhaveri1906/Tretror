import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:tretror/model/Craww.dart';



const int itemsPerPage = 10;

class FeedPage {
  final List<Craww> crawws;

  final int startingIndex;

  final bool hasNext;

  FeedPage({
    @required this.crawws,
    @required this.startingIndex,
    @required this.hasNext,
  });
}
