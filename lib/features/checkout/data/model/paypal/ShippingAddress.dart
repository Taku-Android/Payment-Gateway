/// recipient_name : "Tharwat samy"
/// line1 : "tharwat"
/// line2 : ""
/// city : "tharwat"
/// country_code : "EG"
/// postal_code : "25025"
/// phone : "+00000000"
/// state : "ALex"

class ShippingAddress {
  ShippingAddress({
      String? recipientName, 
      String? line1, 
      String? line2, 
      String? city, 
      String? countryCode, 
      String? postalCode, 
      String? phone, 
      String? state,}){
    _recipientName = recipientName;
    _line1 = line1;
    _line2 = line2;
    _city = city;
    _countryCode = countryCode;
    _postalCode = postalCode;
    _phone = phone;
    _state = state;
}

  ShippingAddress.fromJson(dynamic json) {
    _recipientName = json['recipient_name'];
    _line1 = json['line1'];
    _line2 = json['line2'];
    _city = json['city'];
    _countryCode = json['country_code'];
    _postalCode = json['postal_code'];
    _phone = json['phone'];
    _state = json['state'];
  }
  String? _recipientName;
  String? _line1;
  String? _line2;
  String? _city;
  String? _countryCode;
  String? _postalCode;
  String? _phone;
  String? _state;

  String? get recipientName => _recipientName;
  String? get line1 => _line1;
  String? get line2 => _line2;
  String? get city => _city;
  String? get countryCode => _countryCode;
  String? get postalCode => _postalCode;
  String? get phone => _phone;
  String? get state => _state;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['recipient_name'] = _recipientName;
    map['line1'] = _line1;
    map['line2'] = _line2;
    map['city'] = _city;
    map['country_code'] = _countryCode;
    map['postal_code'] = _postalCode;
    map['phone'] = _phone;
    map['state'] = _state;
    return map;
  }

}