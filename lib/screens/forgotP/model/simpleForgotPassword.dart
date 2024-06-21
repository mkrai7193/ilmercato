/// success : false
/// message : "Reset password email has been sent."
/// data : {"message":"Wrong user.","errorCode":64}

class SimpleForgotPassword {
  SimpleForgotPassword({
      bool? success, 
      String? message, 
      Data? data,}){
    _success = success;
    _message = message;
    _data = data;
}

  SimpleForgotPassword.fromJson(dynamic json) {
    _success = json['success'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _success;
  String? _message;
  Data? _data;
SimpleForgotPassword copyWith({  bool? success,
  String? message,
  Data? data,
}) => SimpleForgotPassword(  success: success ?? _success,
  message: message ?? _message,
  data: data ?? _data,
);
  bool? get success => _success;
  String? get message => _message;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// message : "Wrong user."
/// errorCode : 64

class Data {
  Data({
      String? message, 
      num? errorCode,}){
    _message = message;
    _errorCode = errorCode;
}

  Data.fromJson(dynamic json) {
    _message = json['message'];
    _errorCode = json['errorCode'];
  }
  String? _message;
  num? _errorCode;
Data copyWith({  String? message,
  num? errorCode,
}) => Data(  message: message ?? _message,
  errorCode: errorCode ?? _errorCode,
);
  String? get message => _message;
  num? get errorCode => _errorCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = _message;
    map['errorCode'] = _errorCode;
    return map;
  }

}