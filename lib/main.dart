import 'package:flutter/material.dart';
import 'package:news_app/bello_icons.dart';
import 'package:badges/badges.dart';
import 'package:flutter/services.dart';
import 'package:news_app/navbar.dart';
import 'package:news_app/toi.dart';
import 'smallcards.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      // statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
      statusBarColor: Colors.white,
    ));
    return MaterialApp(
      title: 'Addis Read',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: const MyHomePage(title: 'Addis Read Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  final List posts = [
    'post 1',
    'post 2',
    'post 3',
    'post 4',
    'post 5',
    'post 6',
    'post 7',
  ];
  int activeindex = 0;

  @override
  Widget build(BuildContext context) {
    @override
    TabController tabController = TabController(length: 8, vsync: this);

    return Scaffold(
      backgroundColor: Colors.white,
      //app bar
      appBar: AppBar(
          centerTitle: false,
          title: const Text(
            'Addis Read',
            style: TextStyle(
              fontFamily: "Pacifico",
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          actions: <Widget>[
            Padding(
                padding: const EdgeInsets.only(
                  right: 11.0,
                ),
                child: Center(
                  child: Badge(
                    position: BadgePosition.topEnd(top: 13, end: 13),
                    elevation: 0,
                    badgeContent: (null),
                    badgeColor: Colors.blue.shade600,
                    animationType: BadgeAnimationType.slide,
                    child: IconButton(
                      icon: const Icon(
                        BelloIcons.rrbell,
                        color: Colors.black,
                      ),
                      splashRadius: 20,
                      iconSize: 20,
                      onPressed: () {},
                    ),
                  ),
                )),
          ]),
      //body section
      body: ListView(scrollDirection: Axis.vertical, children: [
        Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0.0),
              child: Container(
                color: Colors.transparent,
                height: 350,
                width: double.maxFinite,
                child: ListView.builder(
                    itemCount: posts.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return const Toi();
                    }),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            TabBar(
                physics: const BouncingScrollPhysics(),
                isScrollable: true,
                controller: tabController,
                labelColor: const Color.fromARGB(255, 4, 8, 36),
                automaticIndicatorColorAdjustment: true,
                labelStyle:
                    const TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                indicatorWeight: 2,
                unselectedLabelColor: Colors.grey,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Colors.black,
                tabs: const [
                  Tab(text: "#አዳዲስ"),
                  Tab(text: "#ሰበር ዜና"),
                  Tab(text: "#ፖለቲካ"),
                  Tab(text: "#ስፖርት"),
                  Tab(text: "#ቢዝነስ"),
                  Tab(text: "#ጤና"),
                  Tab(text: "#የዉጪ"),
                  Tab(text: "#ቴክኖሎጂ"),
                ]),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Container(
                height: 800,
                width: double.maxFinite,
                color: const Color.fromARGB(255, 255, 255, 255),
                child: TabBarView(
                    physics: const BouncingScrollPhysics(),
                    controller: tabController,
                    children: const [
                      Smallcards(),
                      Smallcards(),
                      Smallcards(),
                      Smallcards(),
                      Smallcards(),
                      Smallcards(),
                      Smallcards(),
                      Smallcards(),
                    ]),
              ),
            ),
          ],
        ),
      ]),

      //bottom navbar
      bottomNavigationBar: const Navbar(),
    );
  }
}

// ignore: must_be_immutable
class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;

  CircleTabIndicator({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final double radius;
  late Color color;
  _CirclePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    late Paint paint;
    paint = Paint()..color = color;
    paint = paint..isAntiAlias = true;
    final Offset circleOffset =
        offset + Offset(cfg.size!.width / 2, cfg.size!.height - radius);
    canvas.drawCircle(circleOffset, radius, paint);
  }
}
