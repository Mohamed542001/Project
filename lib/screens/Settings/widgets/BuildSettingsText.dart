part of 'SettingsWidgetsImports.dart';

class BuildSettingsText extends StatelessWidget {
  const BuildSettingsText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: CustomText(
        title: 'Personal Information',
        size: 25,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline,
      ),
    );
  }
}
