/// status : "200"
/// data : {"records":[{"cid":"202","cname":"Coffee Beans & Ground","cdescription":"","cimages":"https://healthkart.online/imagefolder/Coffee Beans & Ground.png","parent":"100","count":0},{"cid":"201","cname":"Lavazza Capsule","cdescription":"","cimages":"https://healthkart.online/imagefolder/Lavazza Capsule.png","parent":"100","count":0}]}
/// message : "Success"

class NewCategoryModel {
  NewCategoryModel({
      String? status, 
      Data? data, 
      String? message,}){
    _status = status;
    _data = data;
    _message = message;
}

  NewCategoryModel.fromJson(dynamic json) {
    _status = json['status'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _message = json['message'];
  }
  String? _status;
  Data? _data;
  String? _message;
NewCategoryModel copyWith({  String? status,
  Data? data,
  String? message,
}) => NewCategoryModel(  status: status ?? _status,
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

/// records : [{"cid":"202","cname":"Coffee Beans & Ground","cdescription":"","cimages":"https://healthkart.online/imagefolder/Coffee Beans & Ground.png","parent":"100","count":0},{"cid":"201","cname":"Lavazza Capsule","cdescription":"","cimages":"https://healthkart.online/imagefolder/Lavazza Capsule.png","parent":"100","count":0}]

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

/// cid : "202"
/// cname : "Coffee Beans & Ground"
/// cdescription : ""
/// cimages : "https://healthkart.online/imagefolder/Coffee Beans & Ground.png"
/// parent : "100"
/// count : 0

class Records {
  Records({
      String? cid, 
      String? cname, 
      String? cdescription, 
      String? cimages, 
      String? parent, 
      num? count,}){
    _cid = cid;
    _cname = cname;
    _cdescription = cdescription;
    _cimages = cimages;
    _parent = parent;
    _count = count;
}

  Records.fromJson(dynamic json) {
    _cid = json['cid'];
    _cname = json['cname'];
    _cdescription = json['cdescription'];
    _cimages = json['cimages'];
    _parent = json['parent'];
    _count = json['count'];
  }
  String? _cid;
  String? _cname;
  String? _cdescription;
  String? _cimages;
  String? _parent;
  num? _count;
Records copyWith({  String? cid,
  String? cname,
  String? cdescription,
  String? cimages,
  String? parent,
  num? count,
}) => Records(  cid: cid ?? _cid,
  cname: cname ?? _cname,
  cdescription: cdescription ?? _cdescription,
  cimages: cimages ?? _cimages,
  parent: parent ?? _parent,
  count: count ?? _count,
);
  String? get cid => _cid;
  String? get cname => _cname;
  String? get cdescription => _cdescription;
  String? get cimages => _cimages;
  String? get parent => _parent;
  num? get count => _count;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cid'] = _cid;
    map['cname'] = _cname;
    map['cdescription'] = _cdescription;
    map['cimages'] = _cimages;
    map['parent'] = _parent;
    map['count'] = _count;
    return map;
  }

}