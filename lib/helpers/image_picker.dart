import 'dart:io';
import 'package:flutter/material.dart';

File imageFile;

void openImagePicker(
    {BuildContext context,
    Function onCameraPressed,
    Function onGalleryPressed}) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 150.0,
          child: Column(
            children: <Widget>[
              Text(
                'إضافة صوره',
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8.0,
              ),
              FlatButton(
                child: Text(
                  'إختيار من المعرض',
                  style: TextStyle(
                      color: Theme.of(context).accentColor,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: onGalleryPressed,
              ),
              SizedBox(
                height: 6.0,
              ),
              FlatButton(
                child: Text(
                  'إلتقاط صورة',
                  style: TextStyle(
                      color: Theme.of(context).accentColor,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: onCameraPressed,
              )
            ],
          ),
        );
      });
}
