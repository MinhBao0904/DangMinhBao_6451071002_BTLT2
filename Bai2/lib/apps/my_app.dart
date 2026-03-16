import 'package:flutter/material.dart';
import '../views/food_menu_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FoodMenuView(),
    );
  }
}