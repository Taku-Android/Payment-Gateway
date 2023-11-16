import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_gateway/features/checkout/data/model/payment_intent/payment_intent_input_model.dart';
import 'package:payment_gateway/features/checkout/presentation/manager/payment_cubit.dart';
import 'package:payment_gateway/features/checkout/presentation/views/thank_you_view.dart';

import '../../../../core/global_widgets/custom_button.dart';
import '../manager/payment_state.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccess) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => const ThankYouView(),
            ),
          );
        }

        if (state is PaymentFailure) {
          SnackBar snackBar = SnackBar(content: Text(state.errMessage));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return CustomButton(
            isLoading: state is PaymentLoading ? true : false,
            onPressed: () {
              PaymentIntentInputModel paymentIntentInputModel =
                  PaymentIntentInputModel(amount: '2000', currency: 'USD' , customerId: 'cus_P0w6APTVeYF9kC');
              BlocProvider.of<PaymentCubit>(context)
                  .makePayment(paymentIntentInputModel);
            },
            title: 'Continue');
      },
    );
  }
}
