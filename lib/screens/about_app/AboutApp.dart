part of 'AboutAppImports.dart';

class AboutApp extends StatefulWidget {
  const AboutApp({Key? key}) : super(key: key);


  @override
  State<AboutApp> createState() => _AboutAppState();
}

class _AboutAppState extends State<AboutApp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: 'About App',
        color: AppColors.white,
        back: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: const [
              BuildAboutAppText()
            ],
          ),
        ),
      ),
    );
  }
}
