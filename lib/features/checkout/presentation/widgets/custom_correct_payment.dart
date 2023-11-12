import 'package:flutter/material.dart';

class CustomCorrectPayment extends StatelessWidget {
  const CustomCorrectPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 60,
      backgroundColor: Color(0xffd9d9d9),
      child: CircleAvatar(
        radius: 50,
        backgroundColor: Colors.green,
        child: Icon(
          Icons.check,
          size: 80,
          color: Colors.white,
        ),
      ),
    );
  }
}
