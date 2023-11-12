import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';

class ThankYouCardType extends StatelessWidget {
  const ThankYouCardType({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Image.asset('assets/images/logo.png', height: 40,),
        title: const Text("Credit Card", style: Styles.style18Black),
        subtitle: const Text("Mastercard **78", style: Styles.style18Black),

      ),
    );
  }
}