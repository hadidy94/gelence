import 'package:flutter/material.dart';

Widget buildButton(
    {Color color,
    String title,
    Function onTap,
    BuildContext context,
    double top,
    double bottom,
    double left,
    double right}) {
  return Padding(
    padding: EdgeInsets.only(left: left, right: right, bottom: bottom, top: top),
    child: InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    ),
  );
}
