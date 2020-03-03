import 'package:flutter/material.dart';
import 'package:glencee/helpers/button.dart';
import 'package:glencee/helpers/rounded_back_appbar.dart';
import 'package:glencee/helpers/text_form_field.dart';
import 'package:glencee/screens/bottom_navigation/view.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // List<String> cities = [
  //   'اسم المدينة',
  //   'المنصوره',
  //   'القاهرة',
  //   'الاسكندرية',
  //   'شرم الشيخ',
  //   'طنطا'
  // ];
  // List<String> countries = [
  //   'اسم الدولة',
  //   'مصر',
  //   'السعودية',
  //   'الامارات',
  //   'الكويت'
  // ];
  // String _selectedCity = 'اسم المدينة';
  // String _selectedCountry = 'اسم الدولة';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          roundedBackAppBar(context: context, title: 'انشاء حساب جديد'),
          Expanded(
              child: Column(
            children: <Widget>[
              textField(title: 'الاسم الاول'),
              textField(title: 'اسم العائلة'),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 20),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: <Widget>[
              //       _buildCitiesNamesDropDown(
              //           startValue: _selectedCity, dataList: cities),
              //       _buildCitiesNamesDropDown(
              //           startValue: _selectedCountry, dataList: countries),
              //     ],
              //   ),
              // ),
              // textField(title: 'الحي'),
              textField(title: 'رقم الجوال'),
              textField(title: 'البريد الالكتروني'),
              textField(title: 'الرقم السري'),
              textField(title: 'تأكيد الرقم السري'),
              buildButton(
                  color: Theme.of(context).primaryColor,
                  title: 'انشاء حساب جديد',
                  bottom: 10,
                  top: 15,
                  right: 20,
                  left: 20,
                  context: context,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BottomNavigationScreen()));
                  })
            ],
          ))
        ],
      ),
    );
  }

  // Widget _buildCitiesNamesDropDown({String startValue, List<String> dataList}) {
  //   return Container(
  //     width: MediaQuery.of(context).size.width / 2 - 40,
  //     height: 60,
  //     decoration: BoxDecoration(
  //         border: Border.all(width: 1, color: Colors.black12),
  //         color: Colors.white,
  //         borderRadius: BorderRadius.circular(5)),
  //     child: Padding(
  //       padding: const EdgeInsets.all(8.0),
  //       child: Center(
  //         child: Directionality(
  //           textDirection: TextDirection.rtl,
  //           child: DropdownButton<String>(
  //             underline: Container(),
  //             elevation: 0,
  //             style: TextStyle(
  //                 color: Theme.of(context).primaryColor, fontSize: 16.0),
  //             items: dataList.map((item) {
  //               return DropdownMenuItem<String>(
  //                   value: item,
  //                   child: Text(
  //                     item,
  //                     style: TextStyle(
  //                         color: Theme.of(context).primaryColor,
  //                         fontSize: 20.0),
  //                   ));
  //             }).toList(),
  //             onChanged: (String selectedValue) {
  //               setState(() {
  //                 startValue == 'اسم الدولة'
  //                     ? _selectedCountry = selectedValue
  //                     : _selectedCity = selectedValue;
  //               });
  //             },
  //             value: startValue,
  //             isExpanded: true,
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
