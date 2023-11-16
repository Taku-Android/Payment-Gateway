import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_gateway/core/utils/api_keys.dart';
import 'package:payment_gateway/core/utils/api_service.dart';
import 'package:payment_gateway/features/checkout/data/model/payment_intent/payment_intent_input_model.dart';

import '../../features/checkout/data/model/payment_intent/Payment_method_model.dart';

class StripeService {
  final ApiService apiService = ApiService();

  String endPoint = 'https://api.stripe.com/v1/payment_intents';

  Future<PaymentMethodModel> createPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel) async {
    var response = await apiService.post(
        body: paymentIntentInputModel.toJson(),
        url: endPoint,
        token: ApiKeys.token);

    var paymentMethodModel = PaymentMethodModel.fromJson(response.data);

    return paymentMethodModel;
  }

  Future<void> initPaymentSheet({required paymentIntentClientSecret ,
  required customerId , required customerEphemeralKeySecret }) async {
    // 2. initialize the payment sheet
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        // Set to true for custom flow
        customFlow: false,
        // Main params
        merchantDisplayName: 'Stripe Tester',
        paymentIntentClientSecret: paymentIntentClientSecret,
        //customer 
        customerId:  customerId,
customerEphemeralKeySecret:  customerEphemeralKeySecret,
      ),
    );
  }

  Future displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future makePayment({required paymentIntentInputModel}) async {
    var paymentIntentModel = await createPaymentIntent(paymentIntentInputModel);
    await initPaymentSheet(paymentIntentClientSecret: paymentIntentModel.clientSecret, customerId: null, customerEphemeralKeySecret: null);
    await displayPaymentSheet() ;

  }




  /*

  Future<CustomerModel> createCustomer(
      CustomerInputModel customerInputModel) async {
    var response = await apiService.post(
        body: CustomerInputModel.toJson(),
        url: customerEndPoint,
        token: ApiKeys.token);

    var customerModel = CustomerModel.fromJson(response.data);

    return customerModel;
  }

   */

}
