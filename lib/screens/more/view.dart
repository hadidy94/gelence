import 'package:flutter/material.dart';
import 'package:glencee/helpers/rounded_appbar.dart';
import 'package:glencee/screens/about_app/view.dart';
import 'package:glencee/screens/bank_exchange/view.dart';
import 'package:glencee/screens/cities/view.dart';
import 'package:glencee/screens/conditions/view.dart';
import 'package:glencee/screens/contact_us/view.dart';
import 'package:glencee/screens/mony_movements/view.dart';
import 'package:glencee/screens/privacy_policy/view.dart';
import 'package:glencee/screens/track_order_with_number/view.dart';

class MoreScreen extends StatefulWidget {
  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white30,
        ),
        roundedAppBar(context: context, title: 'المزيد'),
        Positioned(
          top: 70,
          bottom: 10,
          child: SizedBox(
            height: MediaQuery.of(context).size.height - 100,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: <Widget>[
                buildCard(
                    title: 'حركات الرصيد',
                    image: 'assets/moneyy.png',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MoneyMovementsScreen()));
                    }),
                buildCard(title: 'التقارير', image: 'assets/sideicon.png'),
                buildCard(
                    title: 'فترة التحويل البنكي',
                    image: 'assets/exch.png',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BankExchangeScreen()));
                    }),
                buildCard(title: 'تفعيل قسيمة', image: 'assets/gift.png'),
                buildCard(
                    title: 'تتبع برقم الشحنة',
                    image: 'assets/arrows.png',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  TrackOrderWithNumberScreen()));
                    }),
                buildCard(
                    title: 'المدن',
                    image: 'assets/moneyy.png',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CitiesScreen()));
                    }),
                buildCard(
                    title: 'الشروط والاحكام',
                    image: 'assets/privacy.png',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ConditionsScreen()));
                    }),
                buildCard(
                    title: 'سياسة الخصوصية',
                    image: 'assets/privacy.png',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PrivacyPolicyScreen()));
                    }),
                buildCard(
                    title: 'اتصل بنا',
                    image: 'assets/mailadd.png',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ContactUsScreen()));
                    }),
                buildCard(
                    title: 'عن Glencee',
                    image: 'assets/about.png',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AboutAppScreen()));
                    }),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget buildCard({String title, String image, Function onTap}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: InkWell(
        onTap: onTap,
        child: Container(
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
      ),
    );
  }
}
