class LoginResponseModel {
  bool? success;
  int? statusCode;
  String? code;
  String? message;
  Data? data;

  LoginResponseModel({
    this.success,
    this.statusCode,
    this.code,
    this.message,
    this.data,
  });

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    success = json ['success'];
    statusCode = json[ 'statusCode'];
    code = json['code'];
    message = json['message'];
    if (json['data'] != null) {
      data =  Data.fromJson(json['data']);
    } else {
      data = null;
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success']= success;
    data['statusCode']= statusCode;
    data['code']= code;
    data['message']= message;

    if(this.data !=null) {
      data['data']= this.data!.toJson();
    }

    return data;
  }

}


class Data {
  String? token;
  int? id;
  String? email;
  String? username;
  String? firstName;
  String? lastName;
  String? displayName;

  Data({this.token, this.id, this.email, this.username, this.firstName, this.lastName,this.displayName });

  Data.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    id =json['id'];
    email = json['email'];
    firstName = json['firstName'];
    displayName = json['displayName'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['token'] = token;
    data['id'] = id;
    data['email'] = email;
    data['username'] = username;
    data['firstName'] = firstName;
    data['displayName'] = displayName;

    return data;
  }
}