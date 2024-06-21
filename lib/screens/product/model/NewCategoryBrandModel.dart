/// status : "200"
/// data : {"records":[{"bname":"Althaus Tea","bimage":"https://ilmercatobh.com/wp-content/uploads/2023/05/Althaus.jpg"},{"bname":"Selamlique","bimage":"https://ilmercatobh.com/wp-content/uploads/2020/11/selamliquebrand.jpg"}]}
/// message : "Success"

class NewCategoryBrandModel {
  NewCategoryBrandModel({
      String? status, 
      Data? data, 
      String? message,}){
    _status = status;
    _data = data;
    _message = message;
}

  NewCategoryBrandModel.fromJson(dynamic json) {
    _status = json['status'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _message = json['message'];
  }
  String? _status;
  Data? _data;
  String? _message;
NewCategoryBrandModel copyWith({  String? status,
  Data? data,
  String? message,
}) => NewCategoryBrandModel(  status: status ?? _status,
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

/// records : [{"bname":"Althaus Tea","bimage":"https://ilmercatobh.com/wp-content/uploads/2023/05/Althaus.jpg"},{"bname":"Selamlique","bimage":"https://ilmercatobh.com/wp-content/uploads/2020/11/selamliquebrand.jpg"}]

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

/// bname : "Althaus Tea"
/// bimage : "https://ilmercatobh.com/wp-content/uploads/2023/05/Althaus.jpg"

class Records {
  Records({
      String? bname, 
      String? bimage,}){
    _bname = bname;
    _bimage = bimage;
}

  Records.fromJson(dynamic json) {
    _bname = json['bname'];
    _bimage = json['bimage'];
  }
  String? _bname;
  String? _bimage;
Records copyWith({  String? bname,
  String? bimage,
}) => Records(  bname: bname ?? _bname,
  bimage: bimage ?? _bimage,
);
  String? get bname => _bname;
  String? get bimage => _bimage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['bname'] = _bname;
    map['bimage'] = _bimage;
    return map;
  }

}