part of 'HomeWidgetsImports.dart';

class BuildDrawer extends StatelessWidget {
  const BuildDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.primary,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20)),
        ),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 40,
                ),
                CustomDrawerCard(
                  title: 'Home',
                  onTap: () =>Navigator.pop(context),
                  image: 'assets/images/account.png',
                  border: true,
                ),

                CustomDrawerCard(
                  title: 'About Us',
                  onTap: ()=>Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_)=> const AboutUs()),
                  ),
                  image: 'assets/images/aboutUs.png',
                  border: true,
                ),

                CustomDrawerCard(
                  title: 'About App',
                  onTap: ()=>Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_)=>const AboutApp()),
                  ),
                  image: 'assets/images/aboutApp.png',
                  border: true,
                ),

                CustomDrawerCard(
                  title: 'Logout',
                  onTap: ()=>Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_)=>const Login()),
                  ),
                  image: 'assets/images/logout.png',
                  border: false,
                ),
              ]
          ),
        )
    );
  }
}
