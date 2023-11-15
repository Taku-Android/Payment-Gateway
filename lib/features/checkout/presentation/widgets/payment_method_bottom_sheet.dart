import 'package:flutter/material.dart';
import 'package:payment_gateway/core/utils/styles.dart';
import 'package:payment_gateway/features/checkout/presentation/widgets/custom_button_bloc_consumer.dart';
import 'package:payment_gateway/features/checkout/presentation/widgets/payment_type_list_tabs.dart';

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              'Choose a payment type',
              style: Styles.style25Black,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          PaymentTypeListTabs(),
          SizedBox(
            height: 32,
          ),
          CustomButtonBlocConsumer(),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}