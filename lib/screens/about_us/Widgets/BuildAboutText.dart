part of 'AboutWidgetsImports.dart';

class BuildAboutText extends StatelessWidget {
  const BuildAboutText({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 30),
      child: CustomText(
        title: 'Team Work',
        size: 25,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline,
      ),
    );
  }
}
