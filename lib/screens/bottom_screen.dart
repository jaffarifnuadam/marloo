import 'package:flutter/material.dart';
import 'package:marlo/screens/contract_screen.dart';
import 'package:marlo/screens/home_screen.dart';

import '../util/AppColors.dart';


Future<void> main() async {
  runApp(BottomScreen());
}

class BottomScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        /* dark theme settings */
      ),
      themeMode: ThemeMode.system,
      home: BottomPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BottomPage extends StatefulWidget {
  @override
  BottomPageState createState() => BottomPageState();
}

class BottomPageState extends State<BottomPage> {
  int selectedPage = 2;

  final _pageOptions = [
    HomeScreen(),
    HomeScreen(),
    ContractPage(),
    HomeScreen(),
    HomeScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: _pageOptions[selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: ImageIcon(
              AssetImage("assets/Icons/home.png"),
            ), label: ('Home')),
            BottomNavigationBarItem(icon: ImageIcon(
              AssetImage("assets/Icons/loans.png"),
            ), label: ('Loans')),
            BottomNavigationBarItem(icon: ImageIcon(
              AssetImage("assets/Icons/contact.png"),
            ), label: ('Contracts')),
            BottomNavigationBarItem(icon: ImageIcon(
              AssetImage("assets/Icons/team.png"),
            ), label: ('Teams')),
            BottomNavigationBarItem(icon: ImageIcon(
              AssetImage("assets/Icons/chat.png"),
            ), label: ('Chats')),
          ],
          selectedItemColor: Colors.blue,
          elevation: 15.0,
          unselectedItemColor: Colors.grey,
          currentIndex: selectedPage,
          backgroundColor: Colors.white,
          showUnselectedLabels: true,
          onTap: (index){
            setState(() {
              selectedPage = index;
            });
          },
        )
    );
  }
}
