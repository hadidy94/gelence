import 'package:flutter/material.dart';
import 'package:glencee/helpers/button.dart';
import 'package:glencee/helpers/rounded_back_appbar.dart';
import 'package:glencee/helpers/text_form_field.dart';

class BankAccountsScreen extends StatefulWidget {
  @override
  _BankAccountsScreenState createState() => _BankAccountsScreenState();
}

class _BankAccountsScreenState extends State<BankAccountsScreen> {
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
          roundedBackAppBar(context: context, title: 'حساب الحوالات البنكية'),
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
                                image: AssetImage('assets/credittt.png'),
                                fit: BoxFit.cover)),
                      )
                    ],
                  ),
                  textField(title: 'اختر المصرف'),
                  textField(title: 'رقم الحساب'),
                  textField(title: 'الاسم '),
                  buildButton(
                      color: Theme.of(context).primaryColor,
                      title: 'حفظ البيانات ',
                      bottom: 10,
                      top: 15,
                      right: 20,
                      left: 20,
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
