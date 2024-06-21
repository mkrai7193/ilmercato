/// status : "200"
/// data : {"records":[{"down_id":"1","down_name":"Bangles","down_link":"https://sjbullion.co.in/dynamic/esunaar/assets/pdf/Bangles.pdf"},{"down_id":"2","down_name":"Long Set","down_link":"https://sjbullion.co.in/dynamic/esunaar/assets/pdf/Long Sets.pdf"},{"down_id":"3","down_name":"Bangles","down_link":"https://sjbullion.co.in/dynamic/esunaar/assets/pdf/Bangles.pdf"},{"down_id":"4","down_name":"Long Set","down_link":"https://sjbullion.co.in/dynamic/esunaar/assets/pdf/Long Sets.pdf"}]}
/// message : "Success"

class ThankModel {
  ThankModel({
    String? status,
    String? data,
    String? message,}){
    _status = status;
    _data = data;
    _message = message;
  }

  ThankModel.fromJson(dynamic json) {
    _status = json['status'];
    _data = json['data'];
    _message = json['message'];
  }
  String? _status;
  String? _data;
  String? _message;

  String? get status => _status;
  String? get data => _data;
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['data'] = _data;

    map['message'] = _message;
    return map;
  }

}
