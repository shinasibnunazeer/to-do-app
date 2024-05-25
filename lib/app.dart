

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do/features/screens/home/home.dart';
import 'package:to_do/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To Do',
      theme: EThemeData.lightTheme,
      home: const HomePage(),
    );
  }
}