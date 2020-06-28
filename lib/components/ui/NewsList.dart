import 'package:flutter/material.dart';


// Usage:
// [200~NewsList("Music . Trending", "DJ Khalid", "Trending with Justin and Rihanna", "https://dummyimage.com/400x400/333/fff")

class NewsList extends StatelessWidget {
  NewsList(this.category, this.newsTitle, this.description, this.imageUrl);

  final String category;
  final String newsTitle;
  final String description;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(13.0),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          border: Border(
            bottom: BorderSide(width: 1.0, color: Colors.grey[300]),
          ),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 5.0),
                child: Text(this.category ?? "",
                    style: TextStyle(fontSize: 14, color: Color(0xff333333))),
              ),
              Text(this.newsTitle ?? "",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Padding(
                padding: EdgeInsets.only(top: 5.0),
                child: Text(this.description ?? "",
                    style: TextStyle(fontSize: 14, color: Color(0xff333333))),
              ),
            ]),
            this.imageUrl != "" ? Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                        this.imageUrl,
                        width: 60))) : Text(''),
          ],
        ),
      );
  }
}
