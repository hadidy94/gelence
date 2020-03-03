import 'package:flutter/material.dart';

Widget textField({
  String title,
  Color color,
  Function validator,
  Function onSaved,
  TextEditingController controller,
}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Directionality(
      textDirection: TextDirection.rtl,
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          labelText: title,
          labelStyle: TextStyle(color: color),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),

        ),
          validator: validator,
          onSaved: onSaved
      ),
    ),
  );
}
