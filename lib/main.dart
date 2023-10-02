import 'package:flutter/material.dart';
import 'package:food_app/ScreenPages/Order_screen.dart';
import 'package:food_app/ScreenPages/report_screen.dart';
import 'ScreenPages/favourite_screen.dart';
import 'ScreenPages/home_screen.dart';
import 'ScreenPages/message_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.orange,
          scaffoldBackgroundColor: const Color.fromRGBO(255, 187, 55, 1.0),
      ),
      home: const Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 2;
  List<Widget> screenList = const [
    FavouriteScreen(),
    OrdersScreen(),
    HomeScreen(),
    MessageScreen(),
    ReportScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
      // NavigationBarTheme(
      //   data: const NavigationBarThemeData(
      //
      //     labelTextStyle: MaterialStatePropertyAll(
      //       TextStyle(fontSize: 14, fontWeight: FontWeight.w500,),
      //     ),
      //   ),
      //   child: NavigationBar(
      //     height: 60,
      //     backgroundColor: const Color(0xFFf1f5fb),
      //       // onDestinationSelected: (index) {
      //       // setState(() {
      //       //   selectedIndex = index;
      //       // });
      //       // } ,
      //       onDestinationSelected: (index) => setState(() {
      //         selectedIndex = index;
      //       }),
      //       destinations: const [
      //         NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
      //         NavigationDestination(icon: Icon(Icons.message_outlined), label: 'Messages'),
      //         NavigationDestination(icon: Icon(Icons.favorite_border), label: "Favourites"),
      //         NavigationDestination(icon: Icon(Icons.shopping_cart), label: "Orders"),
      //         NavigationDestination(icon: Icon(Icons.feedback_outlined), label: 'Report'),
      //       ]
      //   ),
      // ),
      BottomNavigationBar(
          // showSelectedLabels: false,
          showUnselectedLabels: false,
          // backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          // onTap: (index) {
          //   setState(() {
          //     selectedIndex = index;
          //   });
          // },
          currentIndex: selectedIndex,
          onTap: (index) => setState(() {
            selectedIndex = index;
          }),
          // unselectedItemColor: Colors.indigoAccent,
          // selectedItemColor: Colors.green,

          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favourites'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: 'Orders'),
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.messenger), label: 'Messages'),
            BottomNavigationBarItem(
                icon: Icon(Icons.feedback_outlined), label: 'Report'),
          ]),
      body: screenList[selectedIndex],
    );
  }
}
