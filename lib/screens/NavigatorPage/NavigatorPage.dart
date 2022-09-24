part of 'NavigatorPageImports.dart';

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({Key? key}) : super(key: key);

  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {

  NavigatorPageData navigatorPageData = NavigatorPageData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft:  Radius.circular(20),
          ),
          child: BottomNavigationBar(
            currentIndex: navigatorPageData.selectedIndex,
            backgroundColor: Colors.white,
            selectedIconTheme: IconThemeData(
                color: AppColors.primary,
                size: 24
            ),
            unselectedIconTheme: IconThemeData(
                color: AppColors.textColor,
                size: 24
            ),
            selectedItemColor: AppColors.primary,
            unselectedItemColor: Colors.grey,
            onTap: (index){
              setState(() {
                navigatorPageData.selectedIndex=index;
              });
            },
            items: const[
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: 'Departments',
                icon: Icon(Icons.local_fire_department),
              ),
              BottomNavigationBarItem(
                label: 'Settings',
                icon: Icon(Icons.settings_outlined),
              ),
            ],
          ),
        ),
      ),
      body: navigatorPageData.children[navigatorPageData.selectedIndex],
    );
  }
}
