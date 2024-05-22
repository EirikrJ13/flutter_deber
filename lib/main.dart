import 'package:flutter/material.dart';
import 'package:flutter_deber/pages/routes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App', 
      routes: {
        '/':(context) => HomePage(),
        '/list':(context) => ListProductPage(),
        '/detail':(context) => DetailPage(),
        '/shop':(context) => ShopCartPage(),
      },
    );
  }
}

