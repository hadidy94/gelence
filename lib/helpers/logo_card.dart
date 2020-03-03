import 'package:flutter/material.dart';

Widget logoCard({BuildContext context}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Container(
        width: MediaQuery.of(context).size.width / 3,
        height: MediaQuery.of(context).size.width / 3,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/about.png'), fit: BoxFit.cover)),
      )
    ],
  );
}
