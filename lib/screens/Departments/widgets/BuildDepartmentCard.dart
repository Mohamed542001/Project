part of 'DepartmentsWidgetsImports.dart';

class BuildDepartmentCard extends StatelessWidget {
  const BuildDepartmentCard({Key? key, required this.departmentsData}) : super(key: key);
  final DepartmentsData departmentsData;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 10,

      ),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: departmentsData.departmentsModel.length,
        itemBuilder: (context,i)=>InkWell(
          onTap: (){
            print(i);
          },

          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 1,
            color: Colors.white10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                    '${departmentsData.departmentsModel[i].image}',
                  height: 50,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomText(
                  title: departmentsData.departmentsModel[i].name,
                )
              ],
            ),
          ),
        )
    );
  }
}
