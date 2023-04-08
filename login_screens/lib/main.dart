import 'package:flutter/material.dart';
import 'package:login_screens/money/money.dart';
import 'package:login_screens/tinder/tinder_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TinderPage(),
      // Row(
      //   children: const [
      //     Expanded(child: MoneyPage()),
      //     Expanded(child: TinderPage())
      //   ],
      // ),
    );
  }
}
