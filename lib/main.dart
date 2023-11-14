import 'package:flutter/material.dart';
import 'package:payment_gateway/checkout_app.dart';

void main() {
  runApp(const CheckoutApp());
}




// add stripe publish key to the main
// PaymentSheetObject create payment intent (amount , currency )

// initPaymentSheet (paymentIntentClientSecret)


/// finally present payment sheet


// Future<void> initPaymentSheet() async {
//   try {
//
//     // 2. initialize the payment sheet
//     await Stripe.instance.initPaymentSheet(
//       paymentSheetParameters: SetupPaymentSheetParameters(
//         // Set to true for custom flow
//         customFlow: false,
//         // Main params
//         merchantDisplayName: 'Flutter Stripe Store Demo',
//         paymentIntentClientSecret: data['paymentIntent'],
//
//       ),
//     );
//     setState(() {
//       _ready = true;
//     });
//   } catch (e) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(content: Text('Error: $e')),
//     );
//     rethrow;
//   }
// }
//
//
//

