import 'package:flutter/material.dart';
import 'package:zeroem_app/screens/hesaplama_ekrani.dart';
import 'screens/introduction_page.dart';

void main() => runApp(ZeroEm());

class ZeroEm extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: Baslangic(),
    );
  }
}
