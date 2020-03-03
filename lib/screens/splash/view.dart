import 'dart:async';
import 'package:flutter/material.dart';
import 'package:glencee/helpers/logo_card.dart';
import 'package:glencee/screens/bottom_navigation/view.dart';
import 'package:glencee/screens/login/view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String token;
  @override
  void initState() {
    _getToken();
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => token != null
            ? Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => BottomNavigationScreen()))
            : Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => LoginScreen())));
  }

  _getToken() async {
    final SharedPreferences _prefs = await SharedPreferences.getInstance();
    setState(() {
      token = _prefs.getString('token');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Center(child: logoCard(context: context)),
          decoration: BoxDecoration(
            color: Colors.white,
          ),
        ),
      ],
    ));
  }
}
