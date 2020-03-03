import 'package:flutter/material.dart';
import 'package:glencee/helpers/button.dart';
import 'package:glencee/helpers/rounded_back_appbar.dart';
import 'package:glencee/helpers/text_form_field.dart';

class ChangePasswordScreen extends StatefulWidget {
  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
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
          roundedBackAppBar(context: context, title: 'تغيير كلمة المرور'),
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
                                image: AssetImage('assets/passworddd.png'),
                                fit: BoxFit.cover)),
                      )
                    ],
                  ),
                  _buildText(
                      title: 'قم بتغيير الرقم السري',
                      color: Colors.black,
                      fontSize: 16,
                      topPadding: 20),
                  _buildText(
                      title: 'ادخل كامة المرور الحالية والجديدة',
                      color: Colors.black12,
                      fontSize: 13,
                      topPadding: 5),
                  _buildText(
                      title: 'وتأكد من صحتهما',
                      fontSize: 13,
                      color: Colors.black12,
                      topPadding: 5),
                  SizedBox(
                    height: 30,
                  ),
                  textField(title: 'الرقم السري الحالي'),
                  textField(title: 'الرقم السري الجديد'),
                  textField(title: 'تأكيد الرقم السري'),
                  buildButton(
                      color: Theme.of(context).primaryColor,
                      title: 'تأكيد الرقم السري الجديد',
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
