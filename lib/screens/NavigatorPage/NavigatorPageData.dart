part of 'NavigatorPageImports.dart';

class NavigatorPageData {
  int selectedIndex=0;
  final List<Widget> children=[
    const Home(),
    const Departments(),
    const Settings(),
  ];
}