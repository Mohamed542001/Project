part of 'AboutUsImports.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);


  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {

  AboutUsData aboutUsData = AboutUsData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: 'About Us',
        color: AppColors.white,
        back: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const BuildAboutText(),
              BuildAboutTeamData(aboutUsData: aboutUsData,),
            ],
          ),
        ),
      ),
    );
  }
}
