/// success : true
/// data : {"message":"Malformed UTF-8 characters","errorCode":22,"user":{"ID":"83","user_login":"sudgupta89","user_nicename":"sudgupta89","user_email":"sudgupta89@gmail.com","user_url":"","user_registered":"2023-12-11 22:31:18","user_activation_key":"1703522603:$P$BmVXlzJIE7TxUjKHoHYjfQ9jstNThk/","user_status":"0","display_name":"sudgupta89"},"roles":["customer"],"jwt":[{"token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3MDM1MjI3ODUsImV4cCI6MTcwMzUyNjM4NSwiZW1haWwiOiJzdWRndXB0YTg5QGdtYWlsLmNvbSIsImlkIjoiODMiLCJzaXRlIjoiaHR0cHM6XC9cL2lsbWVyY2F0b2JoLmNvbSIsInVzZXJuYW1lIjoic3VkZ3VwdGE4OSIsImlzcyI6Imh0dHBzOlwvXC9pbG1lcmNhdG9iaC5jb20ifQ.9yUTM-yrDjo6AQwozysCQPHp-kI5ddHiV2QM4piLXCk","header":{"typ":"JWT","alg":"HS256"},"payload":{"iat":1703522785,"exp":1703526385,"email":"sudgupta89@gmail.com","id":"83","site":"https://ilmercatobh.com","username":"sudgupta89","iss":"https://ilmercatobh.com"},"expire_in":3565}]}

class SimpleLoginModel {
  SimpleLoginModel({
      bool? success, 
      Data? data,}){
    _success = success;
    _data = data;
}

  SimpleLoginModel.fromJson(dynamic json) {
    _success = json['success'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _success;
  Data? _data;
SimpleLoginModel copyWith({  bool? success,
  Data? data,
}) => SimpleLoginModel(  success: success ?? _success,
  data: data ?? _data,
);
  bool? get success => _success;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}


/// message : "Malformed UTF-8 characters"
/// errorCode : 22
/// user : {"ID":"83","user_login":"sudgupta89","user_nicename":"sudgupta89","user_email":"sudgupta89@gmail.com","user_url":"","user_registered":"2023-12-11 22:31:18","user_activation_key":"1703522603:$P$BmVXlzJIE7TxUjKHoHYjfQ9jstNThk/","user_status":"0","display_name":"sudgupta89"}
/// roles : ["customer"]
/// jwt : [{"token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3MDM1MjI3ODUsImV4cCI6MTcwMzUyNjM4NSwiZW1haWwiOiJzdWRndXB0YTg5QGdtYWlsLmNvbSIsImlkIjoiODMiLCJzaXRlIjoiaHR0cHM6XC9cL2lsbWVyY2F0b2JoLmNvbSIsInVzZXJuYW1lIjoic3VkZ3VwdGE4OSIsImlzcyI6Imh0dHBzOlwvXC9pbG1lcmNhdG9iaC5jb20ifQ.9yUTM-yrDjo6AQwozysCQPHp-kI5ddHiV2QM4piLXCk","header":{"typ":"JWT","alg":"HS256"},"payload":{"iat":1703522785,"exp":1703526385,"email":"sudgupta89@gmail.com","id":"83","site":"https://ilmercatobh.com","username":"sudgupta89","iss":"https://ilmercatobh.com"},"expire_in":3565}]

class Data {
  Data({
      String? message, 
      num? errorCode, 
      User? user, 
      List<String>? roles, 
      List<Jwt>? jwt,}){
    _message = message;
    _errorCode = errorCode;
    _user = user;
    _roles = roles;
    _jwt = jwt;
}

  Data.fromJson(dynamic json) {
    _message = json['message'];
    _errorCode = json['errorCode'];
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
    _roles = json['roles'] != null ? json['roles'].cast<String>() : [];
    if (json['jwt'] != null) {
      _jwt = [];
      json['jwt'].forEach((v) {
        _jwt?.add(Jwt.fromJson(v));
      });
    }
  }
  String? _message;
  num? _errorCode;
  User? _user;
  List<String>? _roles;
  List<Jwt>? _jwt;
Data copyWith({  String? message,
  num? errorCode,
  User? user,
  List<String>? roles,
  List<Jwt>? jwt,
}) => Data(  message: message ?? _message,
  errorCode: errorCode ?? _errorCode,
  user: user ?? _user,
  roles: roles ?? _roles,
  jwt: jwt ?? _jwt,
);
  String? get message => _message;
  num? get errorCode => _errorCode;
  User? get user => _user;
  List<String>? get roles => _roles;
  List<Jwt>? get jwt => _jwt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = _message;
    map['errorCode'] = _errorCode;
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    map['roles'] = _roles;
    if (_jwt != null) {
      map['jwt'] = _jwt?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// token : "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3MDM1MjI3ODUsImV4cCI6MTcwMzUyNjM4NSwiZW1haWwiOiJzdWRndXB0YTg5QGdtYWlsLmNvbSIsImlkIjoiODMiLCJzaXRlIjoiaHR0cHM6XC9cL2lsbWVyY2F0b2JoLmNvbSIsInVzZXJuYW1lIjoic3VkZ3VwdGE4OSIsImlzcyI6Imh0dHBzOlwvXC9pbG1lcmNhdG9iaC5jb20ifQ.9yUTM-yrDjo6AQwozysCQPHp-kI5ddHiV2QM4piLXCk"
/// header : {"typ":"JWT","alg":"HS256"}
/// payload : {"iat":1703522785,"exp":1703526385,"email":"sudgupta89@gmail.com","id":"83","site":"https://ilmercatobh.com","username":"sudgupta89","iss":"https://ilmercatobh.com"}
/// expire_in : 3565

class Jwt {
  Jwt({
      String? token, 
      Header? header, 
      Payload? payload, 
      num? expireIn,}){
    _token = token;
    _header = header;
    _payload = payload;
    _expireIn = expireIn;
}

  Jwt.fromJson(dynamic json) {
    _token = json['token'];
    _header = json['header'] != null ? Header.fromJson(json['header']) : null;
    _payload = json['payload'] != null ? Payload.fromJson(json['payload']) : null;
    _expireIn = json['expire_in'];
  }
  String? _token;
  Header? _header;
  Payload? _payload;
  num? _expireIn;
Jwt copyWith({  String? token,
  Header? header,
  Payload? payload,
  num? expireIn,
}) => Jwt(  token: token ?? _token,
  header: header ?? _header,
  payload: payload ?? _payload,
  expireIn: expireIn ?? _expireIn,
);
  String? get token => _token;
  Header? get header => _header;
  Payload? get payload => _payload;
  num? get expireIn => _expireIn;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token'] = _token;
    if (_header != null) {
      map['header'] = _header?.toJson();
    }
    if (_payload != null) {
      map['payload'] = _payload?.toJson();
    }
    map['expire_in'] = _expireIn;
    return map;
  }

}

/// iat : 1703522785
/// exp : 1703526385
/// email : "sudgupta89@gmail.com"
/// id : "83"
/// site : "https://ilmercatobh.com"
/// username : "sudgupta89"
/// iss : "https://ilmercatobh.com"

class Payload {
  Payload({
      num? iat, 
      num? exp, 
      String? email, 
      String? id, 
      String? site, 
      String? username, 
      String? iss,}){
    _iat = iat;
    _exp = exp;
    _email = email;
    _id = id;
    _site = site;
    _username = username;
    _iss = iss;
}

  Payload.fromJson(dynamic json) {
    _iat = json['iat'];
    _exp = json['exp'];
    _email = json['email'];
    _id = json['id'];
    _site = json['site'];
    _username = json['username'];
    _iss = json['iss'];
  }
  num? _iat;
  num? _exp;
  String? _email;
  String? _id;
  String? _site;
  String? _username;
  String? _iss;
Payload copyWith({  num? iat,
  num? exp,
  String? email,
  String? id,
  String? site,
  String? username,
  String? iss,
}) => Payload(  iat: iat ?? _iat,
  exp: exp ?? _exp,
  email: email ?? _email,
  id: id ?? _id,
  site: site ?? _site,
  username: username ?? _username,
  iss: iss ?? _iss,
);
  num? get iat => _iat;
  num? get exp => _exp;
  String? get email => _email;
  String? get id => _id;
  String? get site => _site;
  String? get username => _username;
  String? get iss => _iss;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['iat'] = _iat;
    map['exp'] = _exp;
    map['email'] = _email;
    map['id'] = _id;
    map['site'] = _site;
    map['username'] = _username;
    map['iss'] = _iss;
    return map;
  }

}

/// typ : "JWT"
/// alg : "HS256"

class Header {
  Header({
      String? typ, 
      String? alg,}){
    _typ = typ;
    _alg = alg;
}

  Header.fromJson(dynamic json) {
    _typ = json['typ'];
    _alg = json['alg'];
  }
  String? _typ;
  String? _alg;
Header copyWith({  String? typ,
  String? alg,
}) => Header(  typ: typ ?? _typ,
  alg: alg ?? _alg,
);
  String? get typ => _typ;
  String? get alg => _alg;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['typ'] = _typ;
    map['alg'] = _alg;
    return map;
  }

}

/// ID : "83"
/// user_login : "sudgupta89"
/// user_nicename : "sudgupta89"
/// user_email : "sudgupta89@gmail.com"
/// user_url : ""
/// user_registered : "2023-12-11 22:31:18"
/// user_activation_key : "1703522603:$P$BmVXlzJIE7TxUjKHoHYjfQ9jstNThk/"
/// user_status : "0"
/// display_name : "sudgupta89"

class User {
  User({
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

  User.fromJson(dynamic json) {
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
User copyWith({  String? id,
  String? userLogin,
  String? userNicename,
  String? userEmail,
  String? userUrl,
  String? userRegistered,
  String? userActivationKey,
  String? userStatus,
  String? displayName,
}) => User(  id: id ?? _id,
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