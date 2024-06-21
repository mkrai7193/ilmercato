/// status : "200"
/// data : {"records":[{"id":"78","name":"sud","mobile":"9560995547","email":"sud26@gmail.com"}]}
/// message : "Login Successfully Done"

class RegisterModel {
  RegisterModel({
      String? status, 
      Data? data, 
      String? message,}){
    _status = status;
    _data = data;
    _message = message;
}

  RegisterModel.fromJson(dynamic json) {
    _status = json['status'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _message = json['message'];
  }
  String? _status;
  Data? _data;
  String? _message;
RegisterModel copyWith({  String? status,
  Data? data,
  String? message,
}) => RegisterModel(  status: status ?? _status,
  data: data ?? _data,
  message: message ?? _message,
);
  String? get status => _status;
  Data? get data => _data;
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    map['message'] = _message;
    return map;
  }

}

/// records : [{"id":"78","name":"sud","mobile":"9560995547","email":"sud26@gmail.com"}]

class Data {
  Data({
      List<Records>? records,}){
    _records = records;
}

  Data.fromJson(dynamic json) {
    if (json['records'] != null) {
      _records = [];
      json['records'].forEach((v) {
        _records?.add(Records.fromJson(v));
      });
    }
  }
  List<Records>? _records;
Data copyWith({  List<Records>? records,
}) => Data(  records: records ?? _records,
);
  List<Records>? get records => _records;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_records != null) {
      map['records'] = _records?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : "78"
/// name : "sud"
/// mobile : "9560995547"
/// email : "sud26@gmail.com"

class Records {
  Records({
      String? id, 
      String? name, 
      String? mobile, 
      String? email,}){
    _id = id;
    _name = name;
    _mobile = mobile;
    _email = email;
}

  Records.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _mobile = json['mobile'];
    _email = json['email'];
  }
  String? _id;
  String? _name;
  String? _mobile;
  String? _email;
Records copyWith({  String? id,
  String? name,
  String? mobile,
  String? email,
}) => Records(  id: id ?? _id,
  name: name ?? _name,
  mobile: mobile ?? _mobile,
  email: email ?? _email,
);
  String? get id => _id;
  String? get name => _name;
  String? get mobile => _mobile;
  String? get email => _email;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['mobile'] = _mobile;
    map['email'] = _email;
    return map;
  }

}