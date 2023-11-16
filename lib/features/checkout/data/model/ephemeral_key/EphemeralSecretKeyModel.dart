import 'AssociatedObjects.dart';

/// id : "ephkey_1OCu6GCeAm4Ju2FsAaKkvsN8"
/// object : "ephemeral_key"
/// associated_objects : [{"id":"cus_P0vhLXOWfRPJRm","type":"customer"}]
/// created : 1700097032
/// expires : 1700100632
/// livemode : false
/// secret : "ek_test_YWNjdF8xT0NBM1BDZUFtNEp1MkZzLHdlakdLSUxLOTRxbDdldG1XSk84N1pEejl3a3Z4Mjg_00XnCmPIJI"

class EphemeralSecretKeyModel {
  EphemeralSecretKeyModel({
      String? id, 
      String? object, 
      List<AssociatedObjects>? associatedObjects, 
      int? created, 
      int? expires, 
      bool? livemode, 
      String? secret,}){
    _id = id;
    _object = object;
    _associatedObjects = associatedObjects;
    _created = created;
    _expires = expires;
    _livemode = livemode;
    _secret = secret;
}

  EphemeralSecretKeyModel.fromJson(dynamic json) {
    _id = json['id'];
    _object = json['object'];
    if (json['associated_objects'] != null) {
      _associatedObjects = [];
      json['associated_objects'].forEach((v) {
        _associatedObjects?.add(AssociatedObjects.fromJson(v));
      });
    }
    _created = json['created'];
    _expires = json['expires'];
    _livemode = json['livemode'];
    _secret = json['secret'];
  }
  String? _id;
  String? _object;
  List<AssociatedObjects>? _associatedObjects;
  int? _created;
  int? _expires;
  bool? _livemode;
  String? _secret;

  String? get id => _id;
  String? get object => _object;
  List<AssociatedObjects>? get associatedObjects => _associatedObjects;
  int? get created => _created;
  int? get expires => _expires;
  bool? get livemode => _livemode;
  String? get secret => _secret;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['object'] = _object;
    if (_associatedObjects != null) {
      map['associated_objects'] = _associatedObjects?.map((v) => v.toJson()).toList();
    }
    map['created'] = _created;
    map['expires'] = _expires;
    map['livemode'] = _livemode;
    map['secret'] = _secret;
    return map;
  }

}