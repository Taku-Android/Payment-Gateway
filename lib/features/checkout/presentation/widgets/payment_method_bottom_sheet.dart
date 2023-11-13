import 'package:flutter/material.dart';
import 'package:payment_gateway/core/utils/styles.dart';
import 'package:payment_gateway/features/checkout/presentation/widgets/payment_type_list_tabs.dart';

import '../../../../core/global_widgets/custom_button.dart';

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: Text(
              'Choose a payment type',
              style: Styles.style25Black,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const PaymentTypeListTabs(),
          const SizedBox(
            height: 32,
          ),
          CustomButton(onPressed: () {}, title: 'Continue'),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}