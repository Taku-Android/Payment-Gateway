import 'package:flutter/material.dart';
import 'package:payment_gateway/features/checkout/presentation/widgets/custom_correct_payment.dart';
import 'package:payment_gateway/features/checkout/presentation/widgets/thank_you_card.dart';

import 'custom_dashed_line.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Stack(clipBehavior: Clip.none, children: [
        const ThankYouCard(),
        const Positioned(
          top: -60,
          left: 0,
          right: 0,
          child: CustomCorrectPayment(),
        ),
        Positioned(
            bottom: MediaQuery.sizeOf(context).height * .2 + 20,
            left: 0,
            right: 0,
            child: const CustomDashedLine()),
        Positioned(
          left: -20,
          bottom: MediaQuery.sizeOf(context).height * .2,
          child: const CircleAvatar(
            backgroundColor: Colors.white,
          ),
        ),
        Positioned(
          right: -20,
          bottom: MediaQuery.sizeOf(context).height * .2,
          child: const CircleAvatar(
            backgroundColor: Colors.white,
          ),
        ),
      ]),
    );
  }
}

