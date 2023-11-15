import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_gateway/core/utils/api_keys.dart';
import 'package:payment_gateway/core/utils/api_service.dart';
import 'package:payment_gateway/features/checkout/data/model/Payment_method_model.dart';
import 'package:payment_gateway/features/checkout/data/model/payment_intent_input_model.dart';

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

  Future<void> initPaymentSheet({required paymentIntentClientSecret}) async {
    // 2. initialize the payment sheet
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        // Set to true for custom flow
        customFlow: false,
        // Main params
        merchantDisplayName: 'Stripe Tester',
        paymentIntentClientSecret: paymentIntentClientSecret,
      ),
    );
  }

  Future displayPaymentSheet() async {
    Stripe.instance.presentPaymentSheet();
  }

  Future makePayment({required paymentIntentInputModel}) async {
    var paymentIntentModel = await createPaymentIntent(paymentIntentInputModel);
    await initPaymentSheet(paymentIntentClientSecret: paymentIntentModel.clientSecret);
    await displayPaymentSheet() ;

  }


}
