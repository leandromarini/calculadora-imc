import 'package:app2_calculadora_imc/core/theme_app.dart';
import 'package:app2_calculadora_imc/pages/imc_calculator_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ImcCalculatorPage(),
      theme: themeApp,
    );
  }
}
