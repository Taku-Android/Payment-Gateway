class PaymentIntentModel{
  final String amount ;
  final String currency ;

  PaymentIntentModel({required this.amount, required this.currency});




  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['amount'] = amount;
    map['currency'] = currency;
    return map;
  }


}