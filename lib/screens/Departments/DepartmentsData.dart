part of 'DepartmentsImports.dart';

class DepartmentsData{

  List<Widget> navigatePages = [
    const Books(),
    const Electronics(),
    const HomeProduct(),
    const ChildrenProducts(),
    const Sports(),
    const Meals(),
  ];

  List<DepartmentsModel> departmentsModel = [
    DepartmentsModel(
        image: 'assets/images/book.png',
        name: 'Books'
    ),
    DepartmentsModel(
        image: 'assets/images/electronics.png',
        name: 'Electronics'
    ),
    DepartmentsModel(
        image: 'assets/images/home.png',
        name: 'For Home'
    ),
    DepartmentsModel(
        image: 'assets/images/forChildren.png',
        name: 'For Children'
    ),
    DepartmentsModel(
        image: 'assets/images/sport.png',
        name: 'Sports'
    ),
    DepartmentsModel(
        image: 'assets/images/meal.png',
        name: 'Meal'
    ),
  ];
}