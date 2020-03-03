import 'package:flutter/material.dart';
import 'package:glencee/helpers/rounded_back_appbar.dart';

class ConditionsScreen extends StatefulWidget {
  @override
  _ConditionsScreenState createState() => _ConditionsScreenState();
}

class _ConditionsScreenState extends State<ConditionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
        ),
        roundedBackAppBar(context: context, title: 'الشروط والاحكام')
      ],),
    );
  }
}
