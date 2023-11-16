import 'Card.dart';

/// card : {"installments":null,"mandate_options":null,"network":null,"request_three_d_secure":"automatic"}

class PaymentMethodOptions {
  PaymentMethodOptions({
      Card? card,}){
    _card = card;
}

  PaymentMethodOptions.fromJson(dynamic json) {
    _card = json['card'] != null ? Card.fromJson(json['card']) : null;
  }
  Card? _card;

  Card? get card => _card;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_card != null) {
      map['card'] = _card?.toJson();
    }
    return map;
  }

}