/// success : true
/// data : {"jwt":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3MDM1MDQ3NjYsImV4cCI6MTcwMzUwODM2NiwiZW1haWwiOiJzdWRndXB0YTg5QGdtYWlsLmNvbSIsImlkIjoiODMiLCJzaXRlIjoiaHR0cHM6XC9cL2lsbWVyY2F0b2JoLmNvbSIsInVzZXJuYW1lIjoic3VkZ3VwdGE4OSIsImlzcyI6Imh0dHBzOlwvXC9pbG1lcmNhdG9iaC5jb20ifQ.N624LQ2dt9smcFgQkkoyOxG_diI54foW8jEISCNngHk"}

class JwTtokenModel {
  JwTtokenModel({
      bool? success, 
      Data? data,}){
    _success = success;
    _data = data;
}

  JwTtokenModel.fromJson(dynamic json) {
    _success = json['success'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _success;
  Data? _data;
JwTtokenModel copyWith({  bool? success,
  Data? data,
}) => JwTtokenModel(  success: success ?? _success,
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

/// jwt : "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3MDM1MDQ3NjYsImV4cCI6MTcwMzUwODM2NiwiZW1haWwiOiJzdWRndXB0YTg5QGdtYWlsLmNvbSIsImlkIjoiODMiLCJzaXRlIjoiaHR0cHM6XC9cL2lsbWVyY2F0b2JoLmNvbSIsInVzZXJuYW1lIjoic3VkZ3VwdGE4OSIsImlzcyI6Imh0dHBzOlwvXC9pbG1lcmNhdG9iaC5jb20ifQ.N624LQ2dt9smcFgQkkoyOxG_diI54foW8jEISCNngHk"

class Data {
  Data({
    String? jwt,
    int? errorCode,
    String? message,}){
    _jwt = jwt;
    _message = message;
    _errorCode = errorCode;
}

  Data.fromJson(dynamic json) {
    _jwt = json['jwt'];
    _message = json['message'];
    _errorCode = json['errorCode'];
  }
  String? _jwt;
  int? _errorCode;
  String? _message;
Data copyWith({  String? jwt,
  int? errorCode,
  String? message,
}) => Data(  jwt: jwt ?? _jwt,
  errorCode: errorCode ?? _errorCode,
  message: message ?? _message,
);
  String? get jwt => _jwt;
  int? get errorCode => _errorCode;
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['jwt'] = _jwt;
    map['message'] = _message;
    map['errorCode'] = _errorCode;
    return map;
  }


}