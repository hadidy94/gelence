import 'package:flutter/material.dart';
import 'package:glencee/helpers/rounded_back_appbar.dart';
import 'package:glencee/helpers/text_form_field.dart';

class OrderDataScreen extends StatefulWidget {
  @override
  _OrderDataScreenState createState() => _OrderDataScreenState();
}

class _OrderDataScreenState extends State<OrderDataScreen> {
  bool _firstTime = false;
  bool _today = false;
  bool _day1 = false;
  bool _day2 = false;
  bool _tommorow = false;

  Widget buildTitle({String title}) {
    return Padding(
      padding: EdgeInsets.only(right: 20, top: 15, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(
            title,
            textDirection: TextDirection.rtl,
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 12,
                fontWeight: FontWeight.bold),
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
          roundedBackAppBar(context: context, title: 'طلب شحنة'),
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
                      Text(
                        'قم بإدخال بيانات الشحنة',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  buildTitle(title: 'قيمة البضاعة'),
                  textField(title: 'قيمة البضاعة'),
                  buildTitle(title: 'رقم الطلب/ الفاتورة'),
                  textField(title: 'رقم الطلب'),
                  buildTitle(title: 'الوقت المفضل للاستلام'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text('اليوم '),
                      Checkbox(
                        activeColor: Theme.of(context).primaryColor,
                        value: _today,
                        onChanged: (value) {
                          setState(() {
                            _today = value;
                          });
                        },
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Text('اقرب وقت'),
                      Checkbox(
                        activeColor: Theme.of(context).primaryColor,
                        value: _firstTime,
                        onChanged: (value) {
                          setState(() {
                            _firstTime = value;
                          });
                        },
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          'من الساعة ١١:٣٠ صباحا    الي  الساعة ١١:٣٠ مساء',
                          style:
                              TextStyle(color: Theme.of(context).accentColor),
                        ),
                        Checkbox(
                          activeColor: Theme.of(context).accentColor,
                          value: _day1,
                          onChanged: (value) {
                            setState(() {
                              _day1 = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          'من الساعة ١١:٣٠ صباحا    الي  الساعة ١١:٣٠ مساء',
                          style:
                              TextStyle(color: Theme.of(context).accentColor),
                        ),
                        Checkbox(
                          activeColor: Theme.of(context).accentColor,
                          value: _day2,
                          onChanged: (value) {
                            setState(() {
                              _day2 = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text('غدا '),
                      Checkbox(
                        activeColor: Theme.of(context).primaryColor,
                        value: _tommorow,
                        onChanged: (value) {
                          setState(() {
                            _tommorow = value;
                          });
                        },
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).primaryColor),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'تأكيد الطلب',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
