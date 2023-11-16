import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_gateway/core/utils/api_keys.dart';
import 'package:payment_gateway/core/utils/api_service.dart';
import 'package:payment_gateway/features/checkout/data/model/ephemeral_key/EphemeralSecretKeyModel.dart';
import 'package:payment_gateway/features/checkout/data/model/init_paymern_sheet_model/init_payment_sheet_model.dart';
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

  Future<void> initPaymentSheet(
      {required InitPaymentSheetModel initPaymentSheetModel}) async {
    // 2. initialize the payment sheet
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        // Set to true for custom flow
        customFlow: false,
        // Main params
        merchantDisplayName: 'Stripe Tester',
        paymentIntentClientSecret:
            initPaymentSheetModel.paymentIntentClientSecret,
        //customer
        customerId: initPaymentSheetModel.customerId,
        customerEphemeralKeySecret:
            initPaymentSheetModel.customerEphemeralKeySecret,
      ),
    );
  }

  Future displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    var paymentIntentModel = await createPaymentIntent(paymentIntentInputModel);
    var ephemeralKey = await createEphemeralKey(
        customerId: paymentIntentInputModel.customerId);
    var initPaymentSheetModel = InitPaymentSheetModel(
        paymentIntentClientSecret: paymentIntentModel.clientSecret!,
        customerId: paymentIntentInputModel.customerId,
        customerEphemeralKeySecret: ephemeralKey.secret!);
    await initPaymentSheet(initPaymentSheetModel: initPaymentSheetModel);
    await displayPaymentSheet();
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

  Future<EphemeralSecretKeyModel> createEphemeralKey(
      {required String customerId}) async {
    var response = await apiService.post(
        body: {'customer': customerId},
        contentType: Headers.formUrlEncodedContentType,
        url: 'https://api.stripe.com/v1/ephemeral_keys',
        headers: {
          'Authorization': 'Bearer ${ApiKeys.token}',
          'Stripe-Version': '2023-10-16',
        },
        token: ApiKeys.token);

    var ephemeralSecretKeyModel =
        EphemeralSecretKeyModel.fromJson(response.data);

    return ephemeralSecretKeyModel;
  }
}
