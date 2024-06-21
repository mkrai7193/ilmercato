/// status : "200"
/// message : "Your e-mail has been sent"

class ForgotModel {
  ForgotModel({
      String? status, 
      String? message,}){
    _status = status;
    _message = message;
}

  ForgotModel.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
  }
  String? _status;
  String? _message;
ForgotModel copyWith({  String? status,
  String? message,
}) => ForgotModel(  status: status ?? _status,
  message: message ?? _message,
);
  String? get status => _status;
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    return map;
  }

}