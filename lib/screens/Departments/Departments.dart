part of 'DepartmentsImports.dart';

class Departments extends StatefulWidget {
  const Departments({Key? key}) : super(key: key);

  @override
  State<Departments> createState() => _DepartmentsState();
}

class _DepartmentsState extends State<Departments> {
  
  DepartmentsData departmentsData = DepartmentsData();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const DefaultAppBar(
          title: 'Departments',
          back: false,
        ),
        body: Container(
          margin: const EdgeInsets.all(10),
          color: AppColors.white,
          height: double.infinity,
            child: BuildDepartmentCard(departmentsData: departmentsData,)
        ),

    );
  }
}
