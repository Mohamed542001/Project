import 'package:flutter/material.dart';
import 'package:project/screens/widgets/DefaultAppBar.dart';

import 'component/BuildSearchBox.dart';
import 'component/categories.dart';
import 'component/discounts.dart';
import 'component/offers.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: 'الصفحة الرئيسية',
        elev: 0,
        leading: InkWell(
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (_) =>  ShoppingBasketView()),
            // );
          },
          child: Stack(alignment: Alignment.topRight, children: [
            Icon(
              Icons.shop,
              color: Colors.black,
              size: 40,
            ),
            CircleAvatar(
              radius: 10,
              backgroundColor: Colors.pinkAccent,
              child: Text('3'),
            )
          ]),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        color: Colors.white,
        child: ListView(
          children: [
            BuildSearchBox(),
            Categories(),
            Offers(),
            Discounts(),
          ],
        ),
      ),
    );
  }
}
