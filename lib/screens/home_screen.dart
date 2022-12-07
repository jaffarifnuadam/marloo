import 'package:flutter/material.dart';

Future<void> main() async {
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
      home: HomeScreenPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({Key? key}) : super(key: key);

  @override
  HomeScreenPageState createState() {
    return HomeScreenPageState();
  }
}

class HomeScreenPageState extends State {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }

}