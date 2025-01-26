import 'package:clone_instagram/home_page.dart';
import 'package:flutter/material.dart';
import 'package:clone_instagram/constants/material_white.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      // theme: ThemeData(primarySwatch: white),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          foregroundColor: Colors.black87, // AppBar 글자 및 아이콘 색상 설정
          backgroundColor: white, // AppBar 배경색 설정
        ),
      ),
    );
  }
}
