import 'package:flutter/material.dart';
import 'package:project/screens/widgets/CustomText.dart';

class Discounts extends StatelessWidget {
  const Discounts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(15),
          alignment: Alignment.topRight,
          child: CustomText(
            title: 'خصومات',
            size: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 20,
                childAspectRatio: 1/1.7,
              ),
              itemCount: 6,
              itemBuilder: (context,index) {
                return Card(
                  margin: EdgeInsets.zero,
                  child: Column(
                    children: [
                      Image.asset('assets/images/pants.jpg',fit: BoxFit.fill,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 80,
                                child: Text(
                                  'حذاء نسائي مسطح من الجلد الطبيعي',
                                  maxLines: 8,
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                              Row(
                                children: [
                                  InkWell(
                                    onTap: (){},
                                    child: Icon(
                                      Icons.star,
                                      size: 12,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: (){},
                                    child: Icon(
                                      Icons.star,
                                      size: 12,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: (){},
                                    child: Icon(
                                      Icons.star,
                                      size: 12,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: (){},
                                    child: Icon(
                                      Icons.star,
                                      size: 12,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: (){},
                                    child: Icon(
                                      Icons.star,
                                      size: 12,
                                    ),
                                  ),

                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              InkWell(
                                onTap: (){},
                                child: Icon(
                                  Icons.favorite,
                                  size: 12,
                                ),
                              ),
                              CustomText(
                                title: '195EGP',
                                fontWeight: FontWeight.bold,
                                size: 8,
                              ),
                              CustomText(
                                title: '300EGP',
                                decoration: TextDecoration.lineThrough,
                                size: 8,
                              ),

                            ],
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        color: Colors.pinkAccent,
                        child: InkWell(
                          onTap: (){},
                          child: CustomText(
                            title: 'إضافة الي السلة',
                            color: Colors.white,
                          ),

                        ),
                      ),
                      // DefaultButton(
                      //   title: 'إضافة الي السلة',
                      //   onTap: (){},
                      //   color: Colors.pinkAccent,
                      //   elev: 0,
                      //
                      //   textColor: Colors.white,
                      //   textSize: 16,
                      // ),
                    ],
                  ),
                );
              },
          ),
        )
      ],
    );
  }

}
