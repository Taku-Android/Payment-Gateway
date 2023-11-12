
import 'package:flutter/material.dart';
import 'package:payment_gateway/core/utils/styles.dart';

class ThankYouInfo extends StatelessWidget {
  const ThankYouInfo({super.key, required this.info, required this.detail});

  final String info;

  final String detail;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(info, style: Styles.style18Black),
          Text(detail, style: Styles.style18Black),
        ],
      ),
    );
  }
}