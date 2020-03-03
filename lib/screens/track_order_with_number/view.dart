import 'package:flutter/material.dart';
import 'package:glencee/helpers/button.dart';
import 'package:glencee/helpers/rounded_back_appbar.dart';
import 'package:glencee/helpers/text_form_field.dart';

class TrackOrderWithNumberScreen extends StatefulWidget {
  @override
  _TrackOrderWithNumberScreenState createState() =>
      _TrackOrderWithNumberScreenState();
}

class _TrackOrderWithNumberScreenState
    extends State<TrackOrderWithNumberScreen> {
  Widget _buildText(
      {String title, Color color, double topPadding, double fontSize}) {
    return Padding(
      padding: EdgeInsets.only(top: topPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
                color: color, fontWeight: FontWeight.bold, fontSize: fontSize),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
          ),
          roundedBackAppBar(context: context, title: 'تتبع برقم الشحنة'),
          Positioned(
            top: 100,
            child: SizedBox(
              height: MediaQuery.of(context).size.height - 100,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/deliveryyy.png'),
                                fit: BoxFit.cover)),
                      )
                    ],
                  ),
                  _buildText(
                      title: 'تتبع برقم الشحنة',
                      color: Colors.black,
                      fontSize: 16,
                      topPadding: 20),
                  _buildText(
                      title: 'ادخل رقم الشحنة وتتبع الشحنة',
                      color: Colors.black12,
                      fontSize: 13,
                      topPadding: 5),
                  _buildText(
                      title: 'من وقت الخروج',
                      fontSize: 13,
                      color: Colors.black12,
                      topPadding: 5),
                  SizedBox(
                    height: 30,
                  ),
                  textField(title: 'رقم الشحنة'),
                  buildButton(
                      color: Theme.of(context).primaryColor,
                      title: 'تتبع',
                      bottom: 10,
                      top: 25,
                      right: 15,
                      left: 15,
                      context: context,
                      onTap: () {}),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
