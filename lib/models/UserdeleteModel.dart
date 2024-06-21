/// message : "User was successfully deleted."
/// id : 1
/// success : false
/// error : "Error message"

class UserdeleteModel {
  UserdeleteModel({
      String? message,
      String? id,
      bool? success, 
      String? error,}){
    _message = message;
    _id = id;
    _success = success;
    _error = error;
}

  UserdeleteModel.fromJson(dynamic json) {
    _message = json['message'];
    _id = json['id'];
    _success = json['success'];
    _error = json['error'];
  }
  String? _message;
  String? _id;
  bool? _success;
  String? _error;
UserdeleteModel copyWith({  String? message,
  String? id,
  bool? success,
  String? error,
}) => UserdeleteModel(  message: message ?? _message,
  id: id ?? _id,
  success: success ?? _success,
  error: error ?? _error,
);
  String? get message => _message;
  String? get id => _id;
  bool? get success => _success;
  String? get error => _error;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = _message;
    map['id'] = _id;
    map['success'] = _success;
    map['error'] = _error;
    return map;
  }

}