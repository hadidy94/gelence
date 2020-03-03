import 'package:flutter/material.dart';
import 'package:glencee/helpers/rounded_back_appbar.dart';

class MoneyMovementsScreen extends StatefulWidget {
  @override
  _MoneyMovementsScreenState createState() => _MoneyMovementsScreenState();
}

class _MoneyMovementsScreenState extends State<MoneyMovementsScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
        ),
        roundedBackAppBar(context: context, title: 'حركات الرصيد')
      ],),
    );
  }
}
