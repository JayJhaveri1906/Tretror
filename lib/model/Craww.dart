import 'package:flutter/foundation.dart';

import 'User.dart';

class Craww {
  final isLoading;
  final User user;
  final String content;

  Craww({
    @required this.user,
    @required this.content,
    this.isLoading = false,
  });

  Craww.loading()
      : this(
          isLoading: true,
          user: null,
          content: null,
        );
}
