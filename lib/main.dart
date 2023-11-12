import 'package:flutter/material.dart';
import 'package:online_course_app_ui/Screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Online Course App UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff29274F),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}

