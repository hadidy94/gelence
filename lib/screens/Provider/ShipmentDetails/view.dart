import 'package:flutter/material.dart';
import 'package:glencee/helpers/rounded_back_appbar.dart';

class ShipmentDetailsScreen extends StatefulWidget {
  @override
  _ShipmentDetailsScreenState createState() => _ShipmentDetailsScreenState();
}

class _ShipmentDetailsScreenState extends State<ShipmentDetailsScreen> {
  Widget _buildRow({String image, String title, String number}) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 10, bottom: 5),
      child: Row(
        children: <Widget>[
          Image.asset(
            image,
            width: 25,
            height: 25,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            '$title: ',
            style: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 10,
          ),
          Text(number),
        ],
      ),
    );
  }

  Widget _buildSmallRow({String title, String number}) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 10, bottom: 5),
      child: Row(
        children: <Widget>[
          Text(
            '$title: ',
            style: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 5,
          ),
          Text(number),
        ],
      ),
    );
  }

  Widget _buildSmallCard({Color color, String image, String title}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      width: MediaQuery.of(context).size.width / 2 - 20,
      height: 40,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(4), color: color),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            image,
            width: 20,
            height: 20,
          ),
          SizedBox(
            width: 10,
          ),
          Text(title),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          roundedBackAppBar(context: context, title: 'Order Details'),
          Container(
            margin: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            height: 320,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Matajer Al salam',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  height: 1,
                  color: Colors.black12,
                ),
                _buildRow(
                    title: 'Balance',
                    image: 'assets/balance.png',
                    number: '100'),
                _buildRow(
                    title: 'Phone Number',
                    image: 'assets/numbr.png',
                    number: '0508237736736'),
                Row(
                  children: <Widget>[
                    _buildSmallCard(
                        color: Theme.of(context).accentColor.withOpacity(0.5),
                        title: 'Custommer Service',
                        image: 'assets/customerservices.png'),
                    _buildSmallCard(
                        color: Theme.of(context).accentColor.withOpacity(0.8),
                        title: 'Request On Way',
                        image: 'assets/lorry.png'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    _buildSmallCard(
                        color: Theme.of(context).accentColor.withOpacity(0.9),
                        title: 'Request Queue',
                        image: 'assets/layers.png'),
                    _buildSmallCard(
                        color: Colors.red.withOpacity(0.6),
                        title: 'Request Failed',
                        image: 'assets/faild.png'),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _buildSmallRow(title: 'New Pickup', number: '(20) 50'),
                      _buildSmallRow(title: 'New Delivery', number: '(0) 50'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _buildSmallRow(title: '66394949', number: 'pickup'),
                      _buildSmallRow(title: '34567878', number: 'pickup'),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
