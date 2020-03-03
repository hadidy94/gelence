import 'package:flutter/material.dart';
import 'package:glencee/helpers/rounded_back_appbar.dart';

class ContactUsScreen extends StatefulWidget {
  @override
  _ContactUsScreenState createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  Widget _buildText({String title}) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 12),
          )
        ],
      ),
    );
  }

  Widget _buildCard({String text, String title, String image}) {
    return Container(
      margin: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
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
              width: 20,
              height: 20,
            ),
          ],
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
            color: Colors.white30,
          ),
          roundedBackAppBar(context: context, title: 'اتصل بنا'),
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
                                image: AssetImage('assets/mailll.png'),
                                fit: BoxFit.cover)),
                      )
                    ],
                  ),
                  _buildText(title: 'عن طريق رقم الهاتف'),
                  _buildCard(
                      text: '09676456734',
                      title: 'الهاتف الموحد',
                      image: 'assets/greycall.png'),
                  _buildText(title: 'عن طريق البريد الالكتروني'),
                  _buildCard(
                      text: '09676456734',
                      title: 'البريد الالكتروني',
                      image: 'assets/email.png'),
                  _buildText(title: 'اوقات العمل لخدمة العملاء'),
                  Container(
                    margin: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            "من الساعة ٣ مساء الي ٩ مساء",
                            textDirection: TextDirection.rtl,
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 1,
                            height: 30,
                            color: Colors.black12,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "من السبت الي الخميس",
                            textDirection: TextDirection.rtl,
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            'assets/sideicon.png',
                            width: 20,
                            height: 20,
                          ),
                        ],
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
