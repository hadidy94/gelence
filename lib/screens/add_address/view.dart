import 'package:flutter/material.dart';
import 'package:glencee/helpers/button.dart';
import 'package:glencee/helpers/rounded_back_appbar.dart';
import 'package:glencee/helpers/text_form_field.dart';

class AddAddressScreen extends StatefulWidget {
  @override
  _AddAddressScreenState createState() => _AddAddressScreenState();
}

class _AddAddressScreenState extends State<AddAddressScreen> {
  List<String> cities = ['اسم المدينة', 'اسم الدولة'];
  String _value = 'اسم المدينة';

  Widget _buildCitiesNamesDropDown() {
    return Container(
      width: MediaQuery.of(context).size.width / 2 - 40,
      height: 60,
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
                  color: Theme.of(context).primaryColor, fontSize: 16.0),
              items: cities.map((item) {
                return DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: TextStyle(color: Colors.black12, fontSize: 20.0),
                    ));
              }).toList(),
              onChanged: (String selectedValue) {
                setState(() {
                  _value = selectedValue;
                });
              },
              value: _value,
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
          roundedBackAppBar(context: context, title: 'اضف عنوان'),
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
                                image: AssetImage('assets/locationnn.png'),
                                fit: BoxFit.cover)),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 30, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        _buildCitiesNamesDropDown(),
                        _buildCitiesNamesDropDown(),
                      ],
                    ),
                  ),
                  textField(title: 'الحي'),
                  buildButton(
                      color: Theme.of(context).primaryColor,
                      title: 'اضف العنوان ',
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
