import 'package:flutter/material.dart';
import 'package:payment_gateway/config/theme.dart';
import 'package:payment_gateway/features/checkout/presentation/views/my_cart_view.dart';

class CheckoutApp extends StatelessWidget {
  const CheckoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData(),
      home: const MyCartView(),
    );
  }
}
