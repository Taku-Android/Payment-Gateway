import 'package:flutter/material.dart';
import 'package:payment_gateway/features/checkout/presentation/widgets/payment_type_list_tabs.dart';

import 'custom_credit_card.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          PaymentTypeListTabs(),
          CustomCreditCard(),
        ],
      ),
    );
  }
}