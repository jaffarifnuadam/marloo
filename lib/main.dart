// @dart=2.9
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:marlo/screens/bottom_screen.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
