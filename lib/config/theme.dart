import 'package:flutter/material.dart';

class AppTheme{
  static ThemeData themeData(){
    return ThemeData(
      appBarTheme : const AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0
      ),
    );
  }
}