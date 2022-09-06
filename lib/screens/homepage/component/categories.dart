import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/screens/widgets/CustomText.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(15),
          alignment: Alignment.topRight,
          child: CustomText(
            title: 'الفئات',
            size: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 300,
          child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 5,
              mainAxisSpacing: 10,
            ),
            itemCount:12 ,
            itemBuilder: (context,index){
              return InkWell(
                onTap: (){
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (_) => const DressesView()),
                  // );
                },
                child: Container(
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: new AssetImage(
                          "assets/images/dress1.jpg"
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomText(
                        title: 'فساتين',
                        size: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.pinkAccent,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

