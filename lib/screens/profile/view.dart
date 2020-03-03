import 'dart:io';
import 'package:flutter/material.dart';
import 'package:glencee/helpers/image_picker.dart';
import 'package:glencee/screens/bank_acounts/view.dart';
import 'package:glencee/screens/change_password/view.dart';
import 'package:glencee/screens/edit_profile/view.dart';
import 'package:glencee/screens/my_addresses/view.dart';
import 'package:image_picker/image_picker.dart';
import 'controller.dart';
import 'model.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  ProfileModel profileModel = ProfileModel();
  ProfileController profileController = ProfileController();
  bool _loading = true;

  @override
  void initState() {
    _getProfile();

    super.initState();
  }

  _getProfile() async {
    profileModel = await profileController.postProfile();
    setState(() {
      _loading = false;
    });
  }

  Widget _avatar() {
    return Positioned(
      top: MediaQuery.of(context).size.height / 4 - 80,
      right: 10,
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: imageFile == null
                    ? AssetImage('assets/about.png')
                    : FileImage(imageFile),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(90),
            color: Colors.white),
      ),
    );
  }

  void _getImage(BuildContext context, ImageSource source) {
    ImagePicker.pickImage(source: source, maxHeight: 100, maxWidth: 100)
        .then((File image) {
      setState(() {
        imageFile = image;
      });
      Navigator.pop(context);
    });
  }

  Widget _buildText({String title, String text, String image}) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(
            '$title:   $text',
            textDirection: TextDirection.rtl,
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            width: 15,
          ),
          Image.asset(
            image,
            width: 16,
            height: 16,
          ),
        ],
      ),
    );
  }

  Widget _editText({String text, Function onTap}) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          InkWell(
            onTap: onTap,
            child: Text(
              text,
              style:
                  TextStyle(color: Theme.of(context).accentColor, fontSize: 14),
            ),
          )
        ],
      ),
    );
  }

  Widget buildCard({String title, String image, Function onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 15),
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            children: <Widget>[
              Icon(
                Icons.arrow_back_ios,
                color: Colors.black45,
                size: 20,
              ),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black45),
                  textDirection: TextDirection.rtl,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(image))),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard({String image, String title, Function onTap}) {
    return Column(
      children: <Widget>[
        InkWell(
          onTap: onTap,
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.contain)),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(title)
      ],
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
            color: Colors.white12,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4,
            decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30, right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'حسابي',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 4 - 80,
            left: MediaQuery.of(context).size.width / 3 - 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Alii Rabee',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'aliirabee4@gmail.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '01023143510',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 4 - 50,
            left: 10,
            child: IconButton(
                icon: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EditProfileScreen()));
                }),
          ),
          _avatar(),
          Positioned(
            top: MediaQuery.of(context).size.height / 4 - 20,
            right: 90,
            child: InkWell(
              onTap: () {
                openImagePicker(
                    context: context,
                    onCameraPressed: () {
                      _getImage(context, ImageSource.camera);
                    },
                    onGalleryPressed: () {
                      _getImage(context, ImageSource.gallery);
                    });
              },
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Theme.of(context).primaryColor),
                child: Center(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height / 4 + 30,
              right: 15,
              left: 15,
              child: SizedBox(
                  height: MediaQuery.of(context).size.height -
                      (MediaQuery.of(context).size.height / 4 + 100),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            _buildCard(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              MyAddressesScreen()));
                                },
                                image: 'assets/location.png',
                                title: 'عناويني'),
                            _buildCard(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              BankAccountsScreen()));
                                },
                                image: 'assets/moneyy.png',
                                title: 'حساب الحوالات البنكية'),
                            _buildCard(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ChangePasswordScreen()));
                                },
                                image: 'assets/location.png',
                                title: 'كلمة المرور'),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            _buildCard(
                                onTap: () {},
                                image: 'assets/logout.png',
                                title: 'تسجيل الخروج'),
                          ],
                        ),
                      )
                    ],
                  ))),
        ],
      ),
    );
  }
}
