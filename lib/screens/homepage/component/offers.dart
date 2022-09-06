import 'package:flutter/material.dart';
import 'package:project/screens/widgets/CustomText.dart';

class Offers extends StatelessWidget {
  const Offers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(15),
          alignment: Alignment.topRight,
          child: CustomText(
            title: 'عروض',
            size: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          height: 180,
          child: PageView(
            children: [
              Image.asset('assets/images/offer2.jpg',fit: BoxFit.fill,),
              Image.asset('assets/images/offer1.jpg',fit: BoxFit.fill,),
            ],
          ),
        ),
      ],
    );
  }
}
