part of 'ChildrenProductsImports.dart';

class ChildrenProducts extends StatefulWidget {
  const ChildrenProducts({Key? key}) : super(key: key);

  @override
  State<ChildrenProducts> createState() => _ChildrenProductsState();
}

class _ChildrenProductsState extends State<ChildrenProducts> {

  List<ChildrenModel> children = [];
  bool isLoading = true;

  Future<ChildrenModel?> get() async{
    await FirebaseFirestore.instance
        .collection('children')
        .get().
    then((value) {
      value.docs.forEach((element) {
        children.add(ChildrenModel.fromJson(element.data()));
      });
    });
    setState(() {
      isLoading = false;
    });
    print(children[0].name);
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
      appBar: const DefaultAppBar(
        title: 'For Children',
      ),
      body: Container(
        height: double.infinity,
        margin: const EdgeInsets.all(10),
        child: isLoading
            ? const CircularProgressIndicator()
            :SingleChildScrollView(
              child: Column(
          children: [
              Row(
                children: [
                  CustomText(
                    title: 'Children Product',
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
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1 / 1.4,
                ),
                itemCount: children.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
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
                          Image.network('${children[index].image}',height: 80,width: double.infinity,),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomText(
                            title: children[index].name,
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
                            title: children[index].newPrice,
                            fontWeight: FontWeight.bold,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          CustomText(
                            title: children[index].oldPrice,
                            decoration: TextDecoration.lineThrough,

                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
          ],
        ),
            ),
      ),
    );
  }
}
