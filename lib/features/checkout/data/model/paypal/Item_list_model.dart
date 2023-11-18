import 'Items.dart';
import 'ShippingAddress.dart';

/// items : [{"name":"Apple","quantity":4,"price":"10","currency":"USD"},{"name":"Pineapple","quantity":5,"price":"12","currency":"USD"}]
/// shipping_address : {"recipient_name":"Tharwat samy","line1":"tharwat","line2":"","city":"tharwat","country_code":"EG","postal_code":"25025","phone":"+00000000","state":"ALex"}

class ItemListModel {
  ItemListModel({
      List<Items>? items, 
      ShippingAddress? shippingAddress,}){
    _items = items;
    _shippingAddress = shippingAddress;
}

  ItemListModel.fromJson(dynamic json) {
    if (json['items'] != null) {
      _items = [];
      json['items'].forEach((v) {
        _items?.add(Items.fromJson(v));
      });
    }
    _shippingAddress = json['shipping_address'] != null ? ShippingAddress.fromJson(json['shipping_address']) : null;
  }
  List<Items>? _items;
  ShippingAddress? _shippingAddress;

  List<Items>? get items => _items;
  ShippingAddress? get shippingAddress => _shippingAddress;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_items != null) {
      map['items'] = _items?.map((v) => v.toJson()).toList();
    }
    if (_shippingAddress != null) {
      map['shipping_address'] = _shippingAddress?.toJson();
    }
    return map;
  }

}