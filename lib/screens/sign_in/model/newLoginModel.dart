/// wp_user : {"data":{"ID":"16","user_login":"sudgupta89000","user_nicename":"sudgupta89000","user_email":"sudgupta89000@gmail.com","user_url":"","user_registered":"2023-12-07 20:18:58","user_activation_key":"1701980338:$P$BeRdzkR7zrTjk/vg94v33yP/p0vxZD0","user_status":"0","display_name":"sudgupta89000"},"ID":16,"caps":{"customer":true},"cap_key":"wp_capabilities","roles":["customer"],"allcaps":{"read":true,"customer":true},"filter":null}
/// access_token : "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE3MDIxMDk0NjYsInN1YiI6MTZ9._bVwDZE98hsPjErClUpYWpNkrdNg7De1gB0HD8fMKXc"
/// expires_in : 86400
/// refresh_token : "82053ffa65378749eb2c232793a1fd1055254cd9da72eea3df8588f211d52bf4"

class NewLoginModel {
  NewLoginModel({
      WpUser? wpUser, 
      String? accessToken, 
      num? expiresIn, 
      String? refreshToken,}){
    _wpUser = wpUser;
    _accessToken = accessToken;
    _expiresIn = expiresIn;
    _refreshToken = refreshToken;
}

  NewLoginModel.fromJson(dynamic json) {
    _wpUser = json['wp_user'] != null ? WpUser.fromJson(json['wp_user']) : null;
    _accessToken = json['access_token'];
    _expiresIn = json['expires_in'];
    _refreshToken = json['refresh_token'];
  }
  WpUser? _wpUser;
  String? _accessToken;
  num? _expiresIn;
  String? _refreshToken;
NewLoginModel copyWith({  WpUser? wpUser,
  String? accessToken,
  num? expiresIn,
  String? refreshToken,
}) => NewLoginModel(  wpUser: wpUser ?? _wpUser,
  accessToken: accessToken ?? _accessToken,
  expiresIn: expiresIn ?? _expiresIn,
  refreshToken: refreshToken ?? _refreshToken,
);
  WpUser? get wpUser => _wpUser;
  String? get accessToken => _accessToken;
  num? get expiresIn => _expiresIn;
  String? get refreshToken => _refreshToken;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_wpUser != null) {
      map['wp_user'] = _wpUser?.toJson();
    }
    map['access_token'] = _accessToken;
    map['expires_in'] = _expiresIn;
    map['refresh_token'] = _refreshToken;
    return map;
  }

}

/// data : {"ID":"16","user_login":"sudgupta89000","user_nicename":"sudgupta89000","user_email":"sudgupta89000@gmail.com","user_url":"","user_registered":"2023-12-07 20:18:58","user_activation_key":"1701980338:$P$BeRdzkR7zrTjk/vg94v33yP/p0vxZD0","user_status":"0","display_name":"sudgupta89000"}
/// ID : 16
/// caps : {"customer":true}
/// cap_key : "wp_capabilities"
/// roles : ["customer"]
/// allcaps : {"read":true,"customer":true}
/// filter : null

class WpUser {
  WpUser({
      Data? data, 
      num? id, 
      Caps? caps, 
      String? capKey, 
      List<String>? roles, 
      Allcaps? allcaps, 
      dynamic filter,}){
    _data = data;
    _id = id;
    _caps = caps;
    _capKey = capKey;
    _roles = roles;
    _allcaps = allcaps;
    _filter = filter;
}

  WpUser.fromJson(dynamic json) {
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _id = json['ID'];
    _caps = json['caps'] != null ? Caps.fromJson(json['caps']) : null;
    _capKey = json['cap_key'];
    _roles = json['roles'] != null ? json['roles'].cast<String>() : [];
    _allcaps = json['allcaps'] != null ? Allcaps.fromJson(json['allcaps']) : null;
    _filter = json['filter'];
  }
  Data? _data;
  num? _id;
  Caps? _caps;
  String? _capKey;
  List<String>? _roles;
  Allcaps? _allcaps;
  dynamic _filter;
WpUser copyWith({  Data? data,
  num? id,
  Caps? caps,
  String? capKey,
  List<String>? roles,
  Allcaps? allcaps,
  dynamic filter,
}) => WpUser(  data: data ?? _data,
  id: id ?? _id,
  caps: caps ?? _caps,
  capKey: capKey ?? _capKey,
  roles: roles ?? _roles,
  allcaps: allcaps ?? _allcaps,
  filter: filter ?? _filter,
);
  Data? get data => _data;
  num? get id => _id;
  Caps? get caps => _caps;
  String? get capKey => _capKey;
  List<String>? get roles => _roles;
  Allcaps? get allcaps => _allcaps;
  dynamic get filter => _filter;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    map['ID'] = _id;
    if (_caps != null) {
      map['caps'] = _caps?.toJson();
    }
    map['cap_key'] = _capKey;
    map['roles'] = _roles;
    if (_allcaps != null) {
      map['allcaps'] = _allcaps?.toJson();
    }
    map['filter'] = _filter;
    return map;
  }

}

/// read : true
/// customer : true

class Allcaps {
  Allcaps({
      bool? read, 
      bool? customer,}){
    _read = read;
    _customer = customer;
}

  Allcaps.fromJson(dynamic json) {
    _read = json['read'];
    _customer = json['customer'];
  }
  bool? _read;
  bool? _customer;
Allcaps copyWith({  bool? read,
  bool? customer,
}) => Allcaps(  read: read ?? _read,
  customer: customer ?? _customer,
);
  bool? get read => _read;
  bool? get customer => _customer;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['read'] = _read;
    map['customer'] = _customer;
    return map;
  }

}

/// customer : true

class Caps {
  Caps({
      bool? customer,}){
    _customer = customer;
}

  Caps.fromJson(dynamic json) {
    _customer = json['customer'];
  }
  bool? _customer;
Caps copyWith({  bool? customer,
}) => Caps(  customer: customer ?? _customer,
);
  bool? get customer => _customer;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['customer'] = _customer;
    return map;
  }

}

/// ID : "16"
/// user_login : "sudgupta89000"
/// user_nicename : "sudgupta89000"
/// user_email : "sudgupta89000@gmail.com"
/// user_url : ""
/// user_registered : "2023-12-07 20:18:58"
/// user_activation_key : "1701980338:$P$BeRdzkR7zrTjk/vg94v33yP/p0vxZD0"
/// user_status : "0"
/// display_name : "sudgupta89000"

class Data {
  Data({
      String? id, 
      String? userLogin, 
      String? userNicename, 
      String? userEmail, 
      String? userUrl, 
      String? userRegistered, 
      String? userActivationKey, 
      String? userStatus, 
      String? displayName,}){
    _id = id;
    _userLogin = userLogin;
    _userNicename = userNicename;
    _userEmail = userEmail;
    _userUrl = userUrl;
    _userRegistered = userRegistered;
    _userActivationKey = userActivationKey;
    _userStatus = userStatus;
    _displayName = displayName;
}

  Data.fromJson(dynamic json) {
    _id = json['ID'];
    _userLogin = json['user_login'];
    _userNicename = json['user_nicename'];
    _userEmail = json['user_email'];
    _userUrl = json['user_url'];
    _userRegistered = json['user_registered'];
    _userActivationKey = json['user_activation_key'];
    _userStatus = json['user_status'];
    _displayName = json['display_name'];
  }
  String? _id;
  String? _userLogin;
  String? _userNicename;
  String? _userEmail;
  String? _userUrl;
  String? _userRegistered;
  String? _userActivationKey;
  String? _userStatus;
  String? _displayName;
Data copyWith({  String? id,
  String? userLogin,
  String? userNicename,
  String? userEmail,
  String? userUrl,
  String? userRegistered,
  String? userActivationKey,
  String? userStatus,
  String? displayName,
}) => Data(  id: id ?? _id,
  userLogin: userLogin ?? _userLogin,
  userNicename: userNicename ?? _userNicename,
  userEmail: userEmail ?? _userEmail,
  userUrl: userUrl ?? _userUrl,
  userRegistered: userRegistered ?? _userRegistered,
  userActivationKey: userActivationKey ?? _userActivationKey,
  userStatus: userStatus ?? _userStatus,
  displayName: displayName ?? _displayName,
);
  String? get id => _id;
  String? get userLogin => _userLogin;
  String? get userNicename => _userNicename;
  String? get userEmail => _userEmail;
  String? get userUrl => _userUrl;
  String? get userRegistered => _userRegistered;
  String? get userActivationKey => _userActivationKey;
  String? get userStatus => _userStatus;
  String? get displayName => _displayName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ID'] = _id;
    map['user_login'] = _userLogin;
    map['user_nicename'] = _userNicename;
    map['user_email'] = _userEmail;
    map['user_url'] = _userUrl;
    map['user_registered'] = _userRegistered;
    map['user_activation_key'] = _userActivationKey;
    map['user_status'] = _userStatus;
    map['display_name'] = _displayName;
    return map;
  }

}