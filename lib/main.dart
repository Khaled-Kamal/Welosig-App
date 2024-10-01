import 'package:flutter/material.dart';
import 'package:testing/Pages/Login.dart';
import 'package:testing/Pages/Welcome.dart';
import 'package:testing/Pages/signup.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       initialRoute: "/",
       routes: {
        "/" :(context) => const WelomePage(),
        "/login" :(context) => const LoginPage(),
        "/signup" :(context) => const SignupPage(),
       },
    );
  }
}
