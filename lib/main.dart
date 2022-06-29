
import 'package:first_taskdesign/shared/Components/style.dart';
import 'package:flutter/material.dart';


import 'modueles/splach_screen/splach_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themelight,
      home:  SplachScreen(),
    );
  }
}



