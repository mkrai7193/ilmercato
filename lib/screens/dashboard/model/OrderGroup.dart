/// status : "200"
/// data : {"records":[{"order_no":"103","d_id":"69","grand_total":"174962","sub_time":"","status":"Placed","sub_date":"01-05-2022"},{"order_no":"104","d_id":"69","grand_total":"126365","sub_time":"","status":"Placed","sub_date":"01-05-2022"},{"order_no":"105","d_id":"69","grand_total":"126365","sub_time":"","status":"Placed","sub_date":"01-05-2022"},{"order_no":"106","d_id":"69","grand_total":"133677","sub_time":"","status":"Placed","sub_date":"01-05-2022"},{"order_no":"107","d_id":"69","grand_total":"153137","sub_time":"","status":"Placed","sub_date":"01-05-2022"},{"order_no":"108","d_id":"69","grand_total":"153137","sub_time":"","status":"Placed","sub_date":"01-05-2022"},{"order_no":"109","d_id":"69","grand_total":"153137","sub_time":"","status":"Placed","sub_date":"01-05-2022"},{"order_no":"110","d_id":"69","grand_total":"153137","sub_time":"","status":"Placed","sub_date":"02-05-2022"},{"order_no":"111","d_id":"69","grand_total":"153137","sub_time":"","status":"Placed","sub_date":"02-05-2022"},{"order_no":"112","d_id":"69","grand_total":"153137","sub_time":"","status":"Placed","sub_date":"02-05-2022"},{"order_no":"113","d_id":"69","grand_total":"153137","sub_time":"","status":"Placed","sub_date":"02-05-2022"},{"order_no":"114","d_id":"69","grand_total":"153137","sub_time":"","status":"Placed","sub_date":"02-05-2022"},{"order_no":"115","d_id":"69","grand_total":"153137","sub_time":"","status":"Placed","sub_date":"02-05-2022"},{"order_no":"116","d_id":"69","grand_total":"153137","sub_time":"","status":"Placed","sub_date":"02-05-2022"},{"order_no":"117","d_id":"69","grand_total":"153137","sub_time":"","status":"Placed","sub_date":"02-05-2022"},{"order_no":"118","d_id":"69","grand_total":"153137","sub_time":"","status":"Placed","sub_date":"02-05-2022"},{"order_no":"119","d_id":"69","grand_total":"153137","sub_time":"","status":"Placed","sub_date":"02-05-2022"},{"order_no":"120","d_id":"69","grand_total":"153137","sub_time":"","status":"Placed","sub_date":"02-05-2022"},{"order_no":"121","d_id":"69","grand_total":"153137","sub_time":"","status":"Placed","sub_date":"02-05-2022"},{"order_no":"122","d_id":"69","grand_total":"153137","sub_time":"","status":"Placed","sub_date":"02-05-2022"},{"order_no":"123","d_id":"69","grand_total":"153137","sub_time":"","status":"Placed","sub_date":"02-05-2022"},{"order_no":"124","d_id":"69","grand_total":"153137","sub_time":"","status":"Placed","sub_date":"02-05-2022"},{"order_no":"125","d_id":"69","grand_total":"153137","sub_time":"","status":"Placed","sub_date":"02-05-2022"},{"order_no":"126","d_id":"69","grand_total":"153137","sub_time":"","status":"Placed","sub_date":"02-05-2022"},{"order_no":"127","d_id":"69","grand_total":"153137","sub_time":"","status":"Placed","sub_date":"02-05-2022"},{"order_no":"128","d_id":"69","grand_total":"153137","sub_time":"kk:0505:4444","status":"Placed","sub_date":"02-05-2022"},{"order_no":"129","d_id":"69","grand_total":"153137","sub_time":"09:42:04","status":"Placed","sub_date":"02-05-2022"},{"order_no":"130","d_id":"69","grand_total":"153137","sub_time":"09:44:01","status":"Placed","sub_date":"02-05-2022"},{"order_no":"131","d_id":"69","grand_total":"153137","sub_time":"09:46:32","status":"Placed","sub_date":"02-05-2022"},{"order_no":"132","d_id":"69","grand_total":"153137","sub_time":"09:48:06","status":"Placed","sub_date":"02-05-2022"},{"order_no":"133","d_id":"69","grand_total":"153137","sub_time":"09:55:29","status":"Placed","sub_date":"02-05-2022"},{"order_no":"134","d_id":"69","grand_total":"153137","sub_time":"10:01:16","status":"Placed","sub_date":"02-05-2022"},{"order_no":"135","d_id":"69","grand_total":"133677","sub_time":"10:03:25","status":"Placed","sub_date":"02-05-2022"},{"order_no":"136","d_id":"69","grand_total":"155537","sub_time":"10:10:18","status":"Placed","sub_date":"02-05-2022"},{"order_no":"137","d_id":"69","grand_total":"133677","sub_time":"10:13:47","status":"Placed","sub_date":"02-05-2022"},{"order_no":"138","d_id":"69","grand_total":"156765","sub_time":"10:15:53","status":"Placed","sub_date":"02-05-2022"}]}
/// message : " Successfully Done"

class OrderGroup {
  OrderGroup({
      String? status, 
      Data? data, 
      String? message,}){
    _status = status;
    _data = data;
    _message = message;
}

  OrderGroup.fromJson(dynamic json) {
    _status = json['status'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _message = json['message'];
  }
  String? _status;
  Data? _data;
  String? _message;
OrderGroup copyWith({  String? status,
  Data? data,
  String? message,
}) => OrderGroup(  status: status ?? _status,
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

/// records : [{"order_no":"103","d_id":"69","grand_total":"174962","sub_time":"","status":"Placed","sub_date":"01-05-2022"},{"order_no":"104","d_id":"69","grand_total":"126365","sub_time":"","status":"Placed","sub_date":"01-05-2022"},{"order_no":"105","d_id":"69","grand_total":"126365","sub_time":"","status":"Placed","sub_date":"01-05-2022"},{"order_no":"106","d_id":"69","grand_total":"133677","sub_time":"","status":"Placed","sub_date":"01-05-2022"},{"order_no":"107","d_id":"69","grand_total":"153137","sub_time":"","status":"Placed","sub_date":"01-05-2022"},{"order_no":"108","d_id":"69","grand_total":"153137","sub_time":"","status":"Placed","sub_date":"01-05-2022"},{"order_no":"109","d_id":"69","grand_total":"153137","sub_time":"","status":"Placed","sub_date":"01-05-2022"},{"order_no":"110","d_id":"69","grand_total":"153137","sub_time":"","status":"Placed","sub_date":"02-05-2022"},{"order_no":"111","d_id":"69","grand_total":"153137","sub_time":"","status":"Placed","sub_date":"02-05-2022"},{"order_no":"112","d_id":"69","grand_total":"153137","sub_time":"","status":"Placed","sub_date":"02-05-2022"},{"order_no":"113","d_id":"69","grand_total":"153137","sub_time":"","status":"Placed","sub_date":"02-05-2022"},{"order_no":"114","d_id":"69","grand_total":"153137","sub_time":"","status":"Placed","sub_date":"02-05-2022"},{"order_no":"115","d_id":"69","grand_total":"153137","sub_time":"","status":"Placed","sub_date":"02-05-2022"},{"order_no":"116","d_id":"69","grand_total":"153137","sub_time":"","status":"Placed","sub_date":"02-05-2022"},{"order_no":"117","d_id":"69","grand_total":"153137","sub_time":"","status":"Placed","sub_date":"02-05-2022"},{"order_no":"118","d_id":"69","grand_total":"153137","sub_time":"","status":"Placed","sub_date":"02-05-2022"},{"order_no":"119","d_id":"69","grand_total":"153137","sub_time":"","status":"Placed","sub_date":"02-05-2022"},{"order_no":"120","d_id":"69","grand_total":"153137","sub_time":"","status":"Placed","sub_date":"02-05-2022"},{"order_no":"121","d_id":"69","grand_total":"153137","sub_time":"","status":"Placed","sub_date":"02-05-2022"},{"order_no":"122","d_id":"69","grand_total":"153137","sub_time":"","status":"Placed","sub_date":"02-05-2022"},{"order_no":"123","d_id":"69","grand_total":"153137","sub_time":"","status":"Placed","sub_date":"02-05-2022"},{"order_no":"124","d_id":"69","grand_total":"153137","sub_time":"","status":"Placed","sub_date":"02-05-2022"},{"order_no":"125","d_id":"69","grand_total":"153137","sub_time":"","status":"Placed","sub_date":"02-05-2022"},{"order_no":"126","d_id":"69","grand_total":"153137","sub_time":"","status":"Placed","sub_date":"02-05-2022"},{"order_no":"127","d_id":"69","grand_total":"153137","sub_time":"","status":"Placed","sub_date":"02-05-2022"},{"order_no":"128","d_id":"69","grand_total":"153137","sub_time":"kk:0505:4444","status":"Placed","sub_date":"02-05-2022"},{"order_no":"129","d_id":"69","grand_total":"153137","sub_time":"09:42:04","status":"Placed","sub_date":"02-05-2022"},{"order_no":"130","d_id":"69","grand_total":"153137","sub_time":"09:44:01","status":"Placed","sub_date":"02-05-2022"},{"order_no":"131","d_id":"69","grand_total":"153137","sub_time":"09:46:32","status":"Placed","sub_date":"02-05-2022"},{"order_no":"132","d_id":"69","grand_total":"153137","sub_time":"09:48:06","status":"Placed","sub_date":"02-05-2022"},{"order_no":"133","d_id":"69","grand_total":"153137","sub_time":"09:55:29","status":"Placed","sub_date":"02-05-2022"},{"order_no":"134","d_id":"69","grand_total":"153137","sub_time":"10:01:16","status":"Placed","sub_date":"02-05-2022"},{"order_no":"135","d_id":"69","grand_total":"133677","sub_time":"10:03:25","status":"Placed","sub_date":"02-05-2022"},{"order_no":"136","d_id":"69","grand_total":"155537","sub_time":"10:10:18","status":"Placed","sub_date":"02-05-2022"},{"order_no":"137","d_id":"69","grand_total":"133677","sub_time":"10:13:47","status":"Placed","sub_date":"02-05-2022"},{"order_no":"138","d_id":"69","grand_total":"156765","sub_time":"10:15:53","status":"Placed","sub_date":"02-05-2022"}]

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

/// order_no : "103"
/// d_id : "69"
/// grand_total : "174962"
/// sub_time : ""
/// status : "Placed"
/// sub_date : "01-05-2022"

class Records {
  Records({
      String? orderNo, 
      String? dId, 
      String? grandTotal, 
      String? subTime, 
      String? status, 
      String? subDate,}){
    _orderNo = orderNo;
    _dId = dId;
    _grandTotal = grandTotal;
    _subTime = subTime;
    _status = status;
    _subDate = subDate;
}

  Records.fromJson(dynamic json) {
    _orderNo = json['order_no'];
    _dId = json['d_id'];
    _grandTotal = json['grand_total'];
    _subTime = json['sub_time'];
    _status = json['status'];
    _subDate = json['sub_date'];
  }
  String? _orderNo;
  String? _dId;
  String? _grandTotal;
  String? _subTime;
  String? _status;
  String? _subDate;
Records copyWith({  String? orderNo,
  String? dId,
  String? grandTotal,
  String? subTime,
  String? status,
  String? subDate,
}) => Records(  orderNo: orderNo ?? _orderNo,
  dId: dId ?? _dId,
  grandTotal: grandTotal ?? _grandTotal,
  subTime: subTime ?? _subTime,
  status: status ?? _status,
  subDate: subDate ?? _subDate,
);
  String? get orderNo => _orderNo;
  String? get dId => _dId;
  String? get grandTotal => _grandTotal;
  String? get subTime => _subTime;
  String? get status => _status;
  String? get subDate => _subDate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['order_no'] = _orderNo;
    map['d_id'] = _dId;
    map['grand_total'] = _grandTotal;
    map['sub_time'] = _subTime;
    map['status'] = _status;
    map['sub_date'] = _subDate;
    return map;
  }

}