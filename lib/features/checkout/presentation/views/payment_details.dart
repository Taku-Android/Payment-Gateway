import 'package:flutter/material.dart';
import 'package:payment_gateway/core/global_widgets/build_app_bar.dart';
import 'package:payment_gateway/core/global_widgets/custom_button.dart';
import 'package:payment_gateway/features/checkout/presentation/widgets/custom_credit_card.dart';
import 'package:payment_gateway/features/checkout/presentation/widgets/payment_type_list_tabs.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Payment Details'),
      body: const PaymentDetailsViewBody(),
    );
  }
}

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const PaymentTypeListTabs(),
          const CustomCreditCard(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0 , vertical: 35 ),
            child: CustomButton(onPressed: (){}, title: 'Pay'),
          ),
        ],
      ),
    );
  }
}


