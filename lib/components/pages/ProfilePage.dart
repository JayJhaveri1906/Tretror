import 'package:flutter/material.dart';
import 'package:flutter95/flutter95.dart';
import 'package:tretror/components/ui/RetroButton.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold95(
      title: "Profile",
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.network('https://hemmy.xyz/tretror/banner.png',
              width: MediaQuery.of(context).size.width, fit: BoxFit.fill),
          Container(
              padding: EdgeInsets.only(left: 35.0),
              transform: Matrix4.translationValues(0.0, -20.0, 0.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(3.0),
                child: Image.network(
                  'https://hemmy.xyz/tretror/profile_photo.png',
                  width: 50.0,
                  fit: BoxFit.fill,
                ),
              )),
          Padding(
              padding: EdgeInsets.only(left: 35.0),
              child: Text('Sundar Pichai', style: TextStyle(fontSize: 16))),
          Padding(
              padding: EdgeInsets.only(left: 35.0, top: 15.0),
              child: Row(children: <Widget>[
                Image.network('https://hemmy.xyz/tretror/location.png'),
                Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text('Google Inc.',
                        style:
                            TextStyle(fontSize: 16, color: Color(0xff767676))))
              ])),
          Padding(
              padding: EdgeInsets.only(left: 35.0, top: 15.0, bottom: 35.0),
              child: Row(children: <Widget>[
                Row(children: <Widget>[
                  Text('300', style: TextStyle(fontSize: 16)),
                  Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text('Followers',
                          style: TextStyle(
                              fontSize: 16, color: Color(0xff767676))))
                ]),
                Row(children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(left: 25.0),
                      child: Text('300', style: TextStyle(fontSize: 16))),
                  Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text('Following',
                          style: TextStyle(
                              fontSize: 16, color: Color(0xff767676))))
                ])
              ])),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RetroButton(onPressed: null, text: 'Krawws'),
                RetroButton(onPressed: null, text: 'Reply Kraws'),
                RetroButton(onPressed: null, text: 'Media'),
                RetroButton(onPressed: null, text: 'Likes')
              ])
        ],
      ),
    );
  }
}
