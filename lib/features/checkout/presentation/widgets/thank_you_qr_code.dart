import 'package:flutter/material.dart';
import 'package:payment_gateway/core/utils/styles.dart';

class ThankYouQrCode extends StatelessWidget {
  const ThankYouQrCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset('assets/images/thank_you_qr.png'),
        Container(
          width: 120,
          height: 65,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.green,
              width: 2.0,
            ),
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Center(
            child: Text("PAID",
                style: Styles.style24Black.copyWith(color: Colors.green)),
          ),
        )
      ],
    );
  }
}