import 'package:flutter/material.dart';
import 'package:stockfull/screens/login_page.dart';

void main() {
  runApp(Stockfull());
}
class Stockfull extends StatelessWidget {
  const Stockfull({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
} 