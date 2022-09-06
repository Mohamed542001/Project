part of 'HomeWidgetsImports.dart';

class BuildHomePageView extends StatelessWidget {
  const BuildHomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: PageView(
        children: [
          Image.asset(Res.shop2),
          Image.asset(Res.shop3),
          Image.asset(Res.shop1),
        ],
      ),
    );
  }
}
