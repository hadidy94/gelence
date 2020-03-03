import 'package:flutter/material.dart';
import 'package:glencee/helpers/button.dart';
import 'package:glencee/helpers/logo_card.dart';
import 'package:glencee/helpers/text_form_field.dart';
import 'package:glencee/screens/bottom_navigation/view.dart';
import 'package:glencee/screens/signup/view.dart';
import 'controller.dart';
import 'model.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  String name;
  String password;
  bool _loading = false;
  LoginModel loginModel = LoginModel();
  LoginController loginController = LoginController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  void _submitForm() async {
    if (!_formKey.currentState.validate())
      return;
    else
      _formKey.currentState.save();
    setState(() {
      _loading = true;
    });
    loginModel = await loginController.postLogin(
        grantType: 'password', password: password, userName: name);
    setState(() {
      _loading = false;
    });
    if (loginModel.tokenType != null) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => BottomNavigationScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 70,
          ),
          logoCard(context: context),
          _buildLoginCard()
        ],
      ),
    );
  }

  Widget _buildLoginCard() {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 40, bottom: 0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'قم بتسجيل الدخول الآن',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            textField(
                title: 'البريد الالكتروني',
                color: Colors.black,
                validator: (String value) {
                  if (value.isEmpty)
                    return 'البريد الالكتروني غير صحيح';
                  else
                    return null;
                },
                onSaved: (value) {
                  name = value;
                },
                controller: _emailController),
            textField(
                title: 'كلمة المرور',
                color: Colors.black,
                validator: (String value) {
                  if (value.isEmpty)
                    return 'كلمة المرور غير صحيحة';
                  else
                    return null;
                },
                onSaved: (value) {
                  password = value;
                },
                controller: _passwordController),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 14),
              child: Row(
                children: <Widget>[
                  Text(
                    'نسيت كلمة المرور؟',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),
            buildButton(
                color: Theme.of(context).primaryColor,
                title: 'تسجيل دخول',
                bottom: 10,
                top: 50,
                right: 20,
                left: 20,
                context: context,
                onTap: () {
                  _submitForm();
                }),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'انشاء حساب جديد',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
