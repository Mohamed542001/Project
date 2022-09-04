part of 'DepartmentsImports.dart';

class Departments extends StatelessWidget {
  const Departments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const DefaultAppBar(
          title: 'Departments',
          back: false,
        ),
        body: Center(
          child: CustomText(
            title: 'Departments',
          ),
        )
    );
  }
}
