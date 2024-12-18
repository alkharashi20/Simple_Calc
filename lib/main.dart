import 'package:flutter/material.dart';
import 'package:untitled6/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Homescreen.routeName,
    routes: {
      Homescreen.routeName:(context)=>Homescreen()

    },

    );
  }
}
