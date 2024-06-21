class CustomerModel {
  String? email;
  String? firstName;
  String? phone;
  String? password;

  CustomerModel({
    this.email,
    this.firstName,
    this.phone,
    this.password
  });

  CustomerModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    firstName = json[ 'first_name'];
    phone = json['phone'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email']= email;
    data['first_name']= firstName;
    data['phone']= phone;
    data['password']= password;

    return data;
  }

  // Map<String, dynamic> toJson(){
  //   Map<String, dynamic> map = {};
  //     map.addAll({
  //       'email':email,
  //       'firstName' : firstName,
  //       'phone' : phone,
  //       'password' : password
  //       });
  // return map;
  // }
}