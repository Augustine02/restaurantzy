import 'package:flutter/material.dart';
import 'package:restaurantzy/views/home_screen.dart';
import 'package:restaurantzy/views/menu_screen.dart';
import 'package:restaurantzy/widgets/food_tile.dart';
import 'package:restaurantzy/views/food_search.dart';
import 'package:restaurantzy/widgets/foodDetail_tile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}

