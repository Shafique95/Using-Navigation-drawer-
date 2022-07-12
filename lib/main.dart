import 'package:flutter/material.dart';
import 'package:usingnavigationdrawer/pages/page_1.dart';
import 'package:usingnavigationdrawer/pages/page_2.dart';
import 'package:usingnavigationdrawer/pages/page_3.dart';

import 'drawer/drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserDrawer(),
      routes: {
        "/page_three": (ctx) => PageThree(),
        "/page_one": (ctx) => PageOne(),
        "/page_two": (ctx) => PageTwo()
      },
    );
  }
}
