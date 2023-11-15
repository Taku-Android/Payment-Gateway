class PaymentIntentInputModel{
  final String amount ;
  final String currency ;

  PaymentIntentInputModel({required this.amount, required this.currency});




  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['amount'] = '${amount}00';
    map['currency'] = currency;
    return map;
  }


}