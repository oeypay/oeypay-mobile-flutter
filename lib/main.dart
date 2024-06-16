// import 'package:example/screens/login_page.dart';
// import 'package:example/screens/register_page.dart';
import 'package:flutter/material.dart';
import 'package:oepay/common/components/bottomCustomBar.dart';
import 'package:oepay/pages/HomePage/Home.dart';
import 'package:oepay/pages/intro/intro.dart';
import 'package:oepay/pages/loginPages/loginPage.dart';
import 'package:oepay/pages/registerPages/phoneNumber.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          shape: CircleBorder(), // Ensure the shape is circular
        ),
      ),
      home: const ButtonCustomBar(),
    );
  }
}
