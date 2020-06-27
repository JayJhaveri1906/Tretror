import 'package:tretror/api/FeedPage.dart';
import 'package:tretror/model/Craww.dart';
import 'package:tretror/model/User.dart';

Future<FeedPage> fetchPage(int startingIndex) async {
  const catalogLength = 200;
  // We're emulating the delay inherent to making a network call.
  await Future<void>.delayed(const Duration(milliseconds: 500));

  // If the [startingIndex] is beyond the bounds of the catalog, an
  // empty page will be returned.
  if (startingIndex > catalogLength) {
    return FeedPage(
      crawws: [],
      startingIndex: startingIndex,
      hasNext: false,
    );
  }

  return FeedPage(
    crawws: List.generate(
      itemsPerPage,
      (index) => Craww(
          user: User(
            name: "Nobody",
            handle: "@nobody",
            avatarUrl:
                "https://pbs.twimg.com/profile_images/864282616597405701/M-FEJMZ0_400x400.jpg",
          ),
          content: "Blah blah"),
    ),
    startingIndex: startingIndex,
    hasNext: startingIndex + itemsPerPage < catalogLength,
  );
}
