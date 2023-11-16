import 'InvoiceSettings.dart';

/// id : "cus_P0vhLXOWfRPJRm"
/// object : "customer"
/// address : null
/// balance : 0
/// created : 1700096022
/// currency : null
/// default_source : null
/// delinquent : false
/// description : null
/// discount : null
/// email : null
/// invoice_prefix : "E1978AB5"
/// invoice_settings : {"custom_fields":null,"default_payment_method":null,"footer":null,"rendering_options":null}
/// livemode : false
/// metadata : {}
/// name : null
/// next_invoice_sequence : 1
/// phone : null
/// preferred_locales : []
/// shipping : null
/// tax_exempt : "none"
/// test_clock : null

class CustomerModel {
  CustomerModel({
      String? id, 
      String? object, 
      dynamic address, 
      int? balance, 
      int? created, 
      dynamic currency, 
      dynamic defaultSource, 
      bool? delinquent, 
      dynamic description, 
      dynamic discount, 
      dynamic email, 
      String? invoicePrefix, 
      InvoiceSettings? invoiceSettings, 
      bool? livemode, 
      dynamic metadata, 
      dynamic name, 
      int? nextInvoiceSequence, 
      dynamic phone, 
      List<dynamic>? preferredLocales, 
      dynamic shipping, 
      String? taxExempt, 
      dynamic testClock,}){
    _id = id;
    _object = object;
    _address = address;
    _balance = balance;
    _created = created;
    _currency = currency;
    _defaultSource = defaultSource;
    _delinquent = delinquent;
    _description = description;
    _discount = discount;
    _email = email;
    _invoicePrefix = invoicePrefix;
    _invoiceSettings = invoiceSettings;
    _livemode = livemode;
    _metadata = metadata;
    _name = name;
    _nextInvoiceSequence = nextInvoiceSequence;
    _phone = phone;
    _shipping = shipping;
    _taxExempt = taxExempt;
    _testClock = testClock;
}

  CustomerModel.fromJson(dynamic json) {
    _id = json['id'];
    _object = json['object'];
    _address = json['address'];
    _balance = json['balance'];
    _created = json['created'];
    _currency = json['currency'];
    _defaultSource = json['default_source'];
    _delinquent = json['delinquent'];
    _description = json['description'];
    _discount = json['discount'];
    _email = json['email'];
    _invoicePrefix = json['invoice_prefix'];
    _invoiceSettings = json['invoice_settings'] != null ? InvoiceSettings.fromJson(json['invoice_settings']) : null;
    _livemode = json['livemode'];
    _metadata = json['metadata'];
    _name = json['name'];
    _nextInvoiceSequence = json['next_invoice_sequence'];
    _phone = json['phone'];

    _shipping = json['shipping'];
    _taxExempt = json['tax_exempt'];
    _testClock = json['test_clock'];
  }
  String? _id;
  String? _object;
  dynamic _address;
  int? _balance;
  int? _created;
  dynamic _currency;
  dynamic _defaultSource;
  bool? _delinquent;
  dynamic _description;
  dynamic _discount;
  dynamic _email;
  String? _invoicePrefix;
  InvoiceSettings? _invoiceSettings;
  bool? _livemode;
  dynamic _metadata;
  dynamic _name;
  int? _nextInvoiceSequence;
  dynamic _phone;
  dynamic _shipping;
  String? _taxExempt;
  dynamic _testClock;

  String? get id => _id;
  String? get object => _object;
  dynamic get address => _address;
  int? get balance => _balance;
  int? get created => _created;
  dynamic get currency => _currency;
  dynamic get defaultSource => _defaultSource;
  bool? get delinquent => _delinquent;
  dynamic get description => _description;
  dynamic get discount => _discount;
  dynamic get email => _email;
  String? get invoicePrefix => _invoicePrefix;
  InvoiceSettings? get invoiceSettings => _invoiceSettings;
  bool? get livemode => _livemode;
  dynamic get metadata => _metadata;
  dynamic get name => _name;
  int? get nextInvoiceSequence => _nextInvoiceSequence;
  dynamic get phone => _phone;
  dynamic get shipping => _shipping;
  String? get taxExempt => _taxExempt;
  dynamic get testClock => _testClock;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['object'] = _object;
    map['address'] = _address;
    map['balance'] = _balance;
    map['created'] = _created;
    map['currency'] = _currency;
    map['default_source'] = _defaultSource;
    map['delinquent'] = _delinquent;
    map['description'] = _description;
    map['discount'] = _discount;
    map['email'] = _email;
    map['invoice_prefix'] = _invoicePrefix;
    if (_invoiceSettings != null) {
      map['invoice_settings'] = _invoiceSettings?.toJson();
    }
    map['livemode'] = _livemode;
    map['metadata'] = _metadata;
    map['name'] = _name;
    map['next_invoice_sequence'] = _nextInvoiceSequence;
    map['phone'] = _phone;
    map['shipping'] = _shipping;
    map['tax_exempt'] = _taxExempt;
    map['test_clock'] = _testClock;
    return map;
  }

}