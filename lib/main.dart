import 'package:flutter/material.dart';
import 'package:my_otodidak_app1/pages/my_cart.dart';
import 'package:my_otodidak_app1/pages/on_boarding_page.dart';
import 'package:my_otodidak_app1/pages/product.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'Home/',
      routes: {
        'Home/': (context) => OnBoardingPage(),
        'product/': (context) => Product(),
        'cart/': (context) => MyCart(),
      },
    );
  }
}