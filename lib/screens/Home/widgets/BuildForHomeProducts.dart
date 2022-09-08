part of 'HomeWidgetsImports.dart';

class BuildForHomeProducts extends StatefulWidget {
  const BuildForHomeProducts({Key? key}) : super(key: key);

  @override
  State<BuildForHomeProducts> createState() => _BuildForHomeProductsState();
}

class _BuildForHomeProductsState extends State<BuildForHomeProducts> {

  List<HomeProductModel> homeProduct = [];
  bool isLoading = true;

  Future<HomeProductModel?> get() async{
    await FirebaseFirestore.instance
        .collection('homeProduct')
        .get().
    then((value) {
      value.docs.forEach((element) {
        homeProduct.add(HomeProductModel.fromJson(element.data()));
      });
    });
    setState(() {
      isLoading = false;
    });
    print(homeProduct[0].name);
  }


  @override
  void initState() {
    get();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: isLoading
          ? CircularProgressIndicator()
          :Column(
        children: [
          Row(
            children: [
              CustomText(
                title: 'Best Home Product',
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
                        Image.network('${homeProduct[index].image}',height: 80,width: double.infinity,),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomText(
                          title: homeProduct[index].name,
                          fontWeight: FontWeight.bold,
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
                          title: homeProduct[index].newPrice,
                          fontWeight: FontWeight.bold,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomText(
                          title: homeProduct[index].oldPrice,
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
    );
  }
}
