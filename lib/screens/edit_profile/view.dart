import 'package:flutter/material.dart';
import 'package:glencee/helpers/rounded_back_appbar.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
        ),
        roundedBackAppBar(context: context, title: 'تعديل البيانات الشخصية')
      ],),
    );
  }
}
