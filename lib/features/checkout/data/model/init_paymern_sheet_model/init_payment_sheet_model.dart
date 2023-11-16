
class InitPaymentSheetModel {
  String  paymentIntentClientSecret;

  String customerId;

  String customerEphemeralKeySecret;

  InitPaymentSheetModel(
      {required this.paymentIntentClientSecret,
      required this.customerId,
      required this.customerEphemeralKeySecret});
}
