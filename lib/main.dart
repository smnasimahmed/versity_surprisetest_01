import 'package:flutter/material.dart';
import 'package:surprise_test_01/home_page.dart';
import 'package:surprise_test_01/location_page.dart';
import 'package:surprise_test_01/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => LoginPage(),
        "/homepage": (context) => HomePage(),
        "/locationpage": (context) => LocationPage()
      },
    );
  }
}
