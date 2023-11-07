import 'package:flutter/material.dart';
import 'package:payment_gateway/core/utils/styles.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Center(
          child: Text(
              "My Cart",
              style: Styles.style25Black
          ),
        ),
      ),
      body: const MyCartViewBody(),
    );
  }
}

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

      ],
    );
  }
}

