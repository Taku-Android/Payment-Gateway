class PaymentIntentInputModel{
  final String amount ;
  final String currency ;
  final String customerId;

  PaymentIntentInputModel({required this.amount, required this.currency , required this.customerId});




  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['amount'] = '${amount}00';
    map['currency'] = currency;
    map['customer'] = customerId;
    return map;
  }


}