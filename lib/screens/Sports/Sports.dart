part of 'SportsImports.dart';

class Sports extends StatefulWidget {
  const Sports({Key? key}) : super(key: key);

  @override
  State<Sports> createState() => _SportsState();
}

class _SportsState extends State<Sports> {

  List<SportsModel> sports = [];
  bool isLoading = true;

  Future<SportsModel?> get() async{
    await FirebaseFirestore.instance
        .collection('sports')
        .get().
    then((value) {
      value.docs.forEach((element) {
        sports.add(SportsModel.fromJson(element.data()));
      });
    });
    setState(() {
      isLoading = false;
    });
    print(sports[0].name);
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
        title: 'Sports',
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
                    title: 'Sports',
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
                  childAspectRatio: 1 / 1.5,
                ),
                itemCount: sports.length,
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
                          Image.network('${sports[index].image}',height: 80,width: double.infinity,),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomText(
                            title: sports[index].name,
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
                            title: sports[index].newPrice,
                            fontWeight: FontWeight.bold,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          CustomText(
                            title: sports[index].oldPrice,
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
