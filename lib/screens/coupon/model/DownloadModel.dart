/// status : "200"
/// data : {"records":[{"down_id":"1","down_name":"Bangles","down_link":"https://sjbullion.co.in/dynamic/esunaar/assets/pdf/Bangles.pdf"},{"down_id":"2","down_name":"Long Set","down_link":"https://sjbullion.co.in/dynamic/esunaar/assets/pdf/Long Sets.pdf"},{"down_id":"3","down_name":"Bangles","down_link":"https://sjbullion.co.in/dynamic/esunaar/assets/pdf/Bangles.pdf"},{"down_id":"4","down_name":"Long Set","down_link":"https://sjbullion.co.in/dynamic/esunaar/assets/pdf/Long Sets.pdf"}]}
/// message : "Success"

class DownloadModel {
  DownloadModel({
      String? status, 
      Data? data, 
      String? message,}){
    _status = status;
    _data = data;
    _message = message;
}

  DownloadModel.fromJson(dynamic json) {
    _status = json['status'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _message = json['message'];
  }
  String? _status;
  Data? _data;
  String? _message;

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

/// records : [{"down_id":"1","down_name":"Bangles","down_link":"https://sjbullion.co.in/dynamic/esunaar/assets/pdf/Bangles.pdf"},{"down_id":"2","down_name":"Long Set","down_link":"https://sjbullion.co.in/dynamic/esunaar/assets/pdf/Long Sets.pdf"},{"down_id":"3","down_name":"Bangles","down_link":"https://sjbullion.co.in/dynamic/esunaar/assets/pdf/Bangles.pdf"},{"down_id":"4","down_name":"Long Set","down_link":"https://sjbullion.co.in/dynamic/esunaar/assets/pdf/Long Sets.pdf"}]

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

  List<Records>? get records => _records;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_records != null) {
      map['records'] = _records?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// down_id : "1"
/// down_name : "Bangles"
/// down_link : "https://sjbullion.co.in/dynamic/esunaar/assets/pdf/Bangles.pdf"

class Records {
  Records({
      String? downId, 
      String? downName, 
      String? downLink,}){
    _downId = downId;
    _downName = downName;
    _downLink = downLink;
}

  Records.fromJson(dynamic json) {
    _downId = json['down_id'];
    _downName = json['down_name'];
    _downLink = json['down_link'];
  }
  String? _downId;
  String? _downName;
  String? _downLink;

  String? get downId => _downId;
  String? get downName => _downName;
  String? get downLink => _downLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['down_id'] = _downId;
    map['down_name'] = _downName;
    map['down_link'] = _downLink;
    return map;
  }

}