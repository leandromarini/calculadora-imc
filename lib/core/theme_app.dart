import 'package:flutter/material.dart';

final themeApp = ThemeData(
  visualDensity: VisualDensity.adaptivePlatformDensity,
  brightness: Brightness.light,
  primarySwatch: Colors.blue,
  accentColor: Colors.blueAccent,
  errorColor: Colors.red,
  backgroundColor: Colors.white,
  buttonTheme: ButtonThemeData(
    height: 52,
    textTheme: ButtonTextTheme.primary,
  ),
);
