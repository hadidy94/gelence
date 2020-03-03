import 'package:flutter/material.dart';
import 'package:glencee/helpers/colors.dart';
import 'package:glencee/screens/splash/view.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
//nfkpnsixaqqga3czv4ls5xhqkehjvpk4vjiektzjvsho37licpgq

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Bahij',
        accentColor: Color(getColorHexFromStr('#452c92')),
        primaryColor: Color(getColorHexFromStr('#ec6e33')),
      ),
      home: SplashScreen(),
    );
  }
}
