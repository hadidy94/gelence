import 'package:flutter/material.dart';
import 'package:glencee/helpers/rounded_back_appbar.dart';
import 'package:glencee/helpers/text_form_field.dart';

import 'order_view.dart';

class ReceiverMakeOrderScreen extends StatefulWidget {
  @override
  _ReceiverMakeOrderScreenState createState() =>
      _ReceiverMakeOrderScreenState();
}

class _ReceiverMakeOrderScreenState extends State<ReceiverMakeOrderScreen> {
  bool _value = false;
  bool _value2 = false;
  String _selectedCountry = 'اختر الدولة';
  String _selectedAddress = 'اختر العنوان';
  String _selectedCity = 'اختر المدينة';
  List<String> countries = [
    'اختر الدولة',
    'مصر',
    'السعودية',
    'الامارات',
    'الكويت'
  ];
  List<String> addresses = [
    'اختر العنوان',
    'مصر',
    'السعودية',
    'الامارات',
    'الكويت'
  ];
  List<String> cities = [
    'اختر المدينة',
    'المنصوره',
    'القاهرة',
    'الاسكندرية',
    'شرم الشيخ',
    'طنطا'
  ];

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

  Widget _buildAddress({String startValue, List<String> dataList}) {
    return Container(
      width: MediaQuery.of(context).size.width / 2 - 40,
      height: 40,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black12),
          color: Colors.white,
          borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: DropdownButton<String>(
              underline: Container(),
              elevation: 0,
              style: TextStyle(
                  color: Theme.of(context).primaryColor, fontSize: 12.0),
              items: dataList.map((item) {
                return DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: TextStyle(color: Colors.black, fontSize: 14.0),
                    ));
              }).toList(),
              onChanged: (String selectedValue) {
                setState(() {
                  startValue = selectedValue;
                });
              },
              value: startValue,
              isExpanded: true,
            ),
          ),
        ),
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
                        'قم بإدخال بيانات المستلم ثم انتقل لبيانات الشحنة',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  buildTitle(title: 'اختر عنوان المستلم'),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        _buildAddress(
                            dataList: addresses, startValue: _selectedAddress),
                        Container(
                          width: MediaQuery.of(context).size.width / 2 - 20,
                          height: 40,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1, color: Colors.black12),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                'العنوان الحالي',
                                style: TextStyle(fontSize: 14),
                              ),
                              Checkbox(
                                value: _value,
                                onChanged: (value) {
                                  setState(() {
                                    _value = value;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width / 2 - 20,
                          height: 40,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1, color: Colors.black12),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text('اضف عنوان جديد'),
                              Checkbox(
                                value: _value2,
                                onChanged: (value) {
                                  setState(() {
                                    _value2 = value;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        _buildAddress(
                            startValue: _selectedCity, dataList: cities),
                        _buildAddress(
                            startValue: _selectedCountry, dataList: countries),
                      ],
                    ),
                  ),
                  textField(title: 'الحي'),
                  buildTitle(title: 'بيانات اخري '),
                  textField(title: 'الاسم'),
                  textField(title: 'رقم الجوال'),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OrderDataScreen()));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Theme.of(context).primaryColor),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white),
                                child: Icon(Icons.arrow_back),
                              ),
                              Text(
                                'استكمال بيانات الشحنة',
                                style: TextStyle(color: Colors.white),
                              ),
                              Container(),
                            ],
                          ),
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
