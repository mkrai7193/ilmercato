/// status : "200"
/// data : {"records":[{"bid":"1","bimage":"upload/images/banner/lavazzabanner1.webp"},{"bid":"2","bimage":"upload/images/banner/lavazzabanner.webp"},{"bid":"3","bimage":"upload/images/banner/odkbanner.webp"}]}
/// message : "Success"

class BannerModel {
  BannerModel({
      String? status, 
      Data? data, 
      String? message,}){
    _status = status;
    _data = data;
    _message = message;
}

  BannerModel.fromJson(dynamic json) {
    _status = json['status'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _message = json['message'];
  }
  String? _status;
  Data? _data;
  String? _message;
BannerModel copyWith({  String? status,
  Data? data,
  String? message,
}) => BannerModel(  status: status ?? _status,
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

/// records : [{"bid":"1","bimage":"upload/images/banner/lavazzabanner1.webp"},{"bid":"2","bimage":"upload/images/banner/lavazzabanner.webp"},{"bid":"3","bimage":"upload/images/banner/odkbanner.webp"}]

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

/// bid : "1"
/// bimage : "upload/images/banner/lavazzabanner1.webp"

class Records {
  Records({
      String? bid, 
      String? bimage,}){
    _bid = bid;
    _bimage = bimage;
}

  Records.fromJson(dynamic json) {
    _bid = json['bid'];
    _bimage = json['bimage'];
  }
  String? _bid;
  String? _bimage;
Records copyWith({  String? bid,
  String? bimage,
}) => Records(  bid: bid ?? _bid,
  bimage: bimage ?? _bimage,
);
  String? get bid => _bid;
  String? get bimage => _bimage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['bid'] = _bid;
    map['bimage'] = _bimage;
    return map;
  }

}