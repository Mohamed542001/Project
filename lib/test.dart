import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:project/ApiProvider.dart';
import 'package:project/models/books_models/books_models.dart';
import 'package:project/screens/widgets/AppColors.dart';
import 'package:project/screens/widgets/CustomText.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {

  List<BooksModels> books = [];
  bool isLoading = true;

  Future<BooksModels?> get() async{
    await FirebaseFirestore.instance
        .collection('books')
        .get().
    then((value) {
      value.docs.forEach((element) {
        books.add(BooksModels.fromJson(element.data()));
      });
    });
    setState(() {
      isLoading = false;
    });
    print(books[0].name);
  }

  @override
  void initState() {
    get();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Row(
              children: [
                CustomText(
                  title: 'Books',
                  size: 20,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(
                  width: 20,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 350,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1 / 1.5,
                ),
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network('${books[index].image}',height: 80,width: double.infinity,),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomText(
                            title: books[index].name,
                            fontWeight: FontWeight.bold,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          CustomText(
                            title: books[index].author,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          RatingBar.builder(
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 20,
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: AppColors.primary,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          CustomText(
                            title: books[index].newPrice,
                            fontWeight: FontWeight.bold,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          CustomText(
                            title: books[index].oldPrice,
                            decoration: TextDecoration.lineThrough,

                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
