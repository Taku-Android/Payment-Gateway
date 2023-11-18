import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:payment_gateway/core/utils/api_keys.dart';
import 'package:payment_gateway/features/checkout/data/model/payment_intent/payment_intent_input_model.dart';
import 'package:payment_gateway/features/checkout/data/model/paypal/Amount_model.dart';
import 'package:payment_gateway/features/checkout/data/model/paypal/Details.dart';
import 'package:payment_gateway/features/checkout/data/model/paypal/Item_list_model.dart';
import 'package:payment_gateway/features/checkout/data/model/paypal/Items.dart';
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
              //     STRIPE
              // PaymentIntentInputModel paymentIntentInputModel =
              //     PaymentIntentInputModel(amount: '2000', currency: 'USD' , customerId: 'cus_P0w6APTVeYF9kC');
              // BlocProvider.of<PaymentCubit>(context)
              //     .makePayment(paymentIntentInputModel);


              var transactionData = getTransactionData();

              executePaypalPayment(context, transactionData);
            },
            title: 'Continue');
      },
    );
  }

  void executePaypalPayment(BuildContext context, ({AmountModel amount, ItemListModel orderItemList}) transactionData) {
      Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) => PaypalCheckoutView(
        sandboxMode: true,
        clientId: ApiKeys.paypalClientId,
        secretKey: ApiKeys.paypalSecretKey,
        transactions:  [
          {
            "amount": transactionData.amount.toJson(),
            "description": "The payment transaction description.",
            "item_list": transactionData.orderItemList.toJson(),
          }
        ],
        note: "Contact us for any questions on your order.",
        onSuccess: (Map params) async {
          log("onSuccess: $params");
          Navigator.pushReplacement(
            context,
            MaterialPageRoute (
              builder: (BuildContext context) => const ThankYouView(),
            ),
          );
        },
        onError: (error) {
          print("onError: $error");
          Navigator.pop(context);
        },
        onCancel: () {
          print('cancelled:');
          Navigator.pop(context);
        },
      ),
    ));
  }

  ({AmountModel amount, ItemListModel orderItemList}) getTransactionData(){
    var amount = AmountModel(
      total: '100',
      currency: 'USD',
      details:
      Details(shipping: '0', shippingDiscount: 0, subtotal: '100'),
    );
    var itemList = ItemListModel(
      items: [
        Items(
            name: 'Apple', quantity: 4, price: '10', currency: 'USD'),
        Items(
            name: 'Pineapple',
            quantity: 5,
            price: '12',
            currency: 'USD'),
      ],
    );

    return (amount: amount , orderItemList: itemList);

  }


}
