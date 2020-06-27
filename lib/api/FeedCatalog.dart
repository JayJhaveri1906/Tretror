import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tretror/api/FeedPage.dart';
import 'package:tretror/api/fetch.dart';
import 'package:tretror/model/Craww.dart';


class FeedCatalog extends ChangeNotifier {
  static const maxCacheDistance = 100;

  final Map<int, FeedPage> _pages = {};

  final Set<int> _pagesBeingFetched = {};

  int itemCount = 0;

  bool _isDisposed = false;

  @override
  void dispose() {
    _isDisposed = true;
    super.dispose();
  }

  Craww getByIndex(int index) {
    var startingIndex = (index ~/ itemsPerPage) * itemsPerPage;

    if (_pages.containsKey(startingIndex)) {
      var item = _pages[startingIndex].crawws[index - startingIndex];
      return item;
    }

    _fetchPage(startingIndex);

    return Craww.loading();
  }

  Future<void> _fetchPage(int startingIndex) async {
    if (_pagesBeingFetched.contains(startingIndex)) {
      return;
    }

    _pagesBeingFetched.add(startingIndex);
    final page = await fetchPage(startingIndex);
    _pagesBeingFetched.remove(startingIndex);

    if (!page.hasNext) {
      itemCount = startingIndex + page.crawws.length;
    }

    _pages[startingIndex] = page;
    _pruneCache(startingIndex);

    if (!_isDisposed) {
      notifyListeners();
    }
  }

  void _pruneCache(int currentStartingIndex) {
    final keysToRemove = <int>{};
    for (final key in _pages.keys) {
      if ((key - currentStartingIndex).abs() > maxCacheDistance) {
        keysToRemove.add(key);
      }
    }
    for (final key in keysToRemove) {
      _pages.remove(key);
    }
  }
}
