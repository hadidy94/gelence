import 'package:flutter/material.dart';
import 'package:glencee/helpers/rounded_back_appbar.dart';

class BankExchangeScreen extends StatefulWidget {
  @override
  _BankExchangeScreenState createState() => _BankExchangeScreenState();
}

class _BankExchangeScreenState extends State<BankExchangeScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
        ),
        roundedBackAppBar(context: context, title: 'فترة التحويل البنكي')
      ],),
    );
  }
}
