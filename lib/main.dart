import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_gateway/checkout_app.dart';
import 'package:payment_gateway/core/utils/api_keys.dart';

void main() async {
  Stripe.publishableKey = ApiKeys.stripePublishableKey;
  runApp(const CheckoutApp());
}



/**
                           To ADD STRIPE TO YOUR APP
 - add stripe publish key to the main
 - PaymentSheetObject create payment intent (amount , currency
               , ( if u need to save the card info --->  CustomerID ) )
*/

/**
 - the customerId is to get when the user make an account to save the card with his data
 - like now i used postMan and give him name , email , phone and etc
 - for now i will use a const key i get from postman   { cus_P0w6APTVeYF9kC }

 */

/**
 - createEphemeralKey(stripeVersion , CustomerId)
 - this another api to get the secret key by using the customer id
 - for now i will use a const one get it from postMan  {-----}
*/

// initPaymentSheet (paymentIntentClientSecret ,ephemeralKey , customerId )


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

