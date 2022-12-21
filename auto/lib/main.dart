import 'package:auto/pages/home_screen.dart';
import 'package:auto/pages/search_screen.dart';
import 'package:auto/pages/setting_screen.dart';
import 'package:flutter/material.dart';

import 'mainScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
      routes: {
        MainScreen.routeName:(context) => MainScreen(),
        HomeScreen.routeName:(context) => const HomeScreen(),
        SettingScreen.routeName:(context) => const SettingScreen(),
        SearchScreen.routeName:(context) => const SearchScreen(),
      },
    );
  }
}

