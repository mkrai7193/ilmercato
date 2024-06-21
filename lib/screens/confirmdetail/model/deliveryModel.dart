class DeliveryModel {
  int? id;
  String? firstName;
  String? lastName;
  String? username;
  String? email;
  String? phone;
  Billing1? billing1;
  Shipping1? shipping1;


  DeliveryModel({
    this.id,
    this.firstName,
    this.lastName,
    this.username,
    this.email,
    this.phone,
    this.billing1,
    this.shipping1,
  });

  DeliveryModel.fromJson(Map<String, dynamic> json) {
    id = json ['id'];
    firstName = json[ 'first_name'];
    lastName = json['last_name'];
    username = json['username'];
    email = json['email'];
    phone = json['phone'];
    billing1= json['billing'] != null ? new Billing1.fromJson(json['billing']):null;
    shipping1 = json['shipping'] != null ? new Shipping1.fromJson(json['shipping']):null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id']= this.id;
    data['first_name']= this.firstName;
    data['last_name']= this.lastName;
    data['username']= this.username;
    data['email']= this.email;
    data['phone']= this.phone;

    if(this.billing1 !=null) {
      data['billing']= this.billing1!.toJson();
    }

    if(this.shipping1 !=null) {
      data['shipping']= this.shipping1!.toJson();
    }

    return data;
  }

}


class Billing1 {
  String? firstName;
  String? lastName;
  String? company;
  String? address1;
  String? address2;
  String? city;
  String? postcode;
  String? country;
  String? state;
  String? email;
  String? phone;

  Billing1({this.firstName, this.lastName, this.company, this.address1, this.address2, this.city,this.postcode,
    this.country, this.state, this.email, this.phone });

  Billing1.fromJson(Map<String, dynamic> json) {
    firstName = json['first_name'];
    lastName =json['last_name'];
    company = json['company'];
    address1 = json['address_1'];
    address2 = json['address_2'];
    city = json['city'];
    postcode =json['postcode'];
    country = json['country'];
    state = json['state'];
    email = json['email'];
    phone = json['phone'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  new Map<String, dynamic>();
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['company'] = this.company;
    data['address_1'] = this.address1;
    data['address_2'] = this.address2;
    data['city'] = this.city;
    data['postcode'] = this.postcode;
    data['country'] = this.country;
    data['state'] = this.state;
    data['email'] = this.email;
    data['phone'] = this.phone;

    return data;
  }
}


class Shipping1 {
  String? firstName;
  String? lastName;
  String? company;
  String? address1;
  String? address2;
  String? city;
  String? postcode;
  String? country;
  String? state;

  Shipping1({this.firstName, this.lastName, this.company, this.address1, this.address2, this.city,this.postcode,
    this.country, this.state });

  Shipping1.fromJson(Map<String, dynamic> json) {
    firstName = json['first_name'];
    lastName =json['last_name'];
    company = json['company'];
    address1 = json['address_1'];
    address2 = json['address_2'];
    city = json['city'];
    postcode =json['postcode'];
    country = json['country'];
    state = json['state'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  new Map<String, dynamic>();
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['company'] = this.company;
    data['address_1'] = this.address1;
    data['address_2'] = this.address2;
    data['city'] = this.city;
    data['postcode'] = this.postcode;
    data['country'] = this.country;
    data['state'] = this.state;

    return data;
  }
}