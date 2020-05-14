import 'package:chair_ecom/buy_page2.dart';
import 'package:chair_ecom/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chair Ecom',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/buy_page': (context) => BuyPage2(),
      },
      //home: HomePage(),
    );
  }
}