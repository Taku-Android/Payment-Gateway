import 'package:flutter/material.dart';

class AppTheme{
  static ThemeData themeData(){
    return ThemeData(
      appBarTheme : const AppBarTheme(
        backgroundColor: Colors.white ,
        elevation: 0
      ),
      scaffoldBackgroundColor: Colors.white
    );
  }
}