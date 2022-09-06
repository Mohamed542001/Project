part of 'HomeImports.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  GlobalKey<ScaffoldState> scaffoldKey1 = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey1,
      appBar: DefaultAppBar(
        title: 'Shop App',
        back: false,
        leading: IconButton(
            onPressed: (){
              scaffoldKey1.currentState?.openDrawer();
            },
            icon: const Icon(Icons.menu),
        ),
      ),
      drawer: const BuildDrawer(),
      body: Container(
        margin: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              BuildHomePageView(),
              BuildHomeBooks()
            ],
          ),
        ),
      ),
    );


  }
}
