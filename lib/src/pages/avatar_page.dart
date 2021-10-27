// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2021/07/20/14/59/iron-man-6480952__480.jpg'),
              radius: 25.0,
            ),
          ),
          Container(
            // ignore: prefer_const_constructors
            margin: EdgeInsets.only(
              right: 10.0,
            ),
            // ignore: prefer_const_constructors
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://fotografias.antena3.com/clipping/cmsimages02/2018/11/06/150D7F93-4C51-4DA6-9B11-550FAFE0C92A/98.jpg?crop=1066,600,x80,y0&width=1900&height=1069&optimize=high&format=webply'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
