/// id : 1917
/// code : "alt25"
/// amount : "25.00"
/// status : "publish"
/// date_created : "2023-05-16T16:05:47"
/// date_created_gmt : "2023-05-16T16:05:47"
/// date_modified : "2023-05-31T12:38:37"
/// date_modified_gmt : "2023-05-31T12:38:37"
/// discount_type : "percent"
/// description : ""
/// date_expires : "2023-05-21T00:00:00"
/// date_expires_gmt : "2023-05-21T00:00:00"
/// usage_count : 0
/// individual_use : true
/// usage_limit : null
/// usage_limit_per_user : 1
/// limit_usage_to_x_items : null
/// free_shipping : false
/// exclude_sale_items : true
/// minimum_amount : "0.00"
/// maximum_amount : "0.00"

class CouponModel {
  CouponModel({
    int? id,
      String? code, 
      String? amount, 
      String? status, 
      String? dateCreated, 
      String? dateCreatedGmt, 
      String? dateModified, 
      String? dateModifiedGmt, 
      String? discountType, 
      String? description, 
      String? dateExpires, 
      String? dateExpiresGmt, 
      num? usageCount, 
      bool? individualUse, 
      dynamic usageLimit, 
      num? usageLimitPerUser, 
      dynamic limitUsageToXItems, 
      bool? freeShipping, 
      bool? excludeSaleItems, 
      String? minimumAmount, 
      String? maximumAmount,}){
    _id = id;
    _code = code;
    _amount = amount;
    _status = status;
    _dateCreated = dateCreated;
    _dateCreatedGmt = dateCreatedGmt;
    _dateModified = dateModified;
    _dateModifiedGmt = dateModifiedGmt;
    _discountType = discountType;
    _description = description;
    _dateExpires = dateExpires;
    _dateExpiresGmt = dateExpiresGmt;
    _usageCount = usageCount;
    _individualUse = individualUse;
    _usageLimit = usageLimit;
    _usageLimitPerUser = usageLimitPerUser;
    _limitUsageToXItems = limitUsageToXItems;
    _freeShipping = freeShipping;
    _excludeSaleItems = excludeSaleItems;
    _minimumAmount = minimumAmount;
    _maximumAmount = maximumAmount;
}

  CouponModel.fromJson(dynamic json) {
    _id = json['id'];
    _code = json['code'];
    _amount = json['amount'];
    _status = json['status'];
    _dateCreated = json['date_created'];
    _dateCreatedGmt = json['date_created_gmt'];
    _dateModified = json['date_modified'];
    _dateModifiedGmt = json['date_modified_gmt'];
    _discountType = json['discount_type'];
    _description = json['description'];
    _dateExpires = json['date_expires'];
    _dateExpiresGmt = json['date_expires_gmt'];
    _usageCount = json['usage_count'];
    _individualUse = json['individual_use'];
    _usageLimit = json['usage_limit'];
    _usageLimitPerUser = json['usage_limit_per_user'];
    _limitUsageToXItems = json['limit_usage_to_x_items'];
    _freeShipping = json['free_shipping'];
    _excludeSaleItems = json['exclude_sale_items'];
    _minimumAmount = json['minimum_amount'];
    _maximumAmount = json['maximum_amount'];
  }
  int? _id;
  String? _code;
  String? _amount;
  String? _status;
  String? _dateCreated;
  String? _dateCreatedGmt;
  String? _dateModified;
  String? _dateModifiedGmt;
  String? _discountType;
  String? _description;
  String? _dateExpires;
  String? _dateExpiresGmt;
  num? _usageCount;
  bool? _individualUse;
  dynamic _usageLimit;
  num? _usageLimitPerUser;
  dynamic _limitUsageToXItems;
  bool? _freeShipping;
  bool? _excludeSaleItems;
  String? _minimumAmount;
  String? _maximumAmount;
CouponModel copyWith({  int? id,
  String? code,
  String? amount,
  String? status,
  String? dateCreated,
  String? dateCreatedGmt,
  String? dateModified,
  String? dateModifiedGmt,
  String? discountType,
  String? description,
  String? dateExpires,
  String? dateExpiresGmt,
  num? usageCount,
  bool? individualUse,
  dynamic usageLimit,
  num? usageLimitPerUser,
  dynamic limitUsageToXItems,
  bool? freeShipping,
  bool? excludeSaleItems,
  String? minimumAmount,
  String? maximumAmount,
}) => CouponModel(  id: id ?? _id,
  code: code ?? _code,
  amount: amount ?? _amount,
  status: status ?? _status,
  dateCreated: dateCreated ?? _dateCreated,
  dateCreatedGmt: dateCreatedGmt ?? _dateCreatedGmt,
  dateModified: dateModified ?? _dateModified,
  dateModifiedGmt: dateModifiedGmt ?? _dateModifiedGmt,
  discountType: discountType ?? _discountType,
  description: description ?? _description,
  dateExpires: dateExpires ?? _dateExpires,
  dateExpiresGmt: dateExpiresGmt ?? _dateExpiresGmt,
  usageCount: usageCount ?? _usageCount,
  individualUse: individualUse ?? _individualUse,
  usageLimit: usageLimit ?? _usageLimit,
  usageLimitPerUser: usageLimitPerUser ?? _usageLimitPerUser,
  limitUsageToXItems: limitUsageToXItems ?? _limitUsageToXItems,
  freeShipping: freeShipping ?? _freeShipping,
  excludeSaleItems: excludeSaleItems ?? _excludeSaleItems,
  minimumAmount: minimumAmount ?? _minimumAmount,
  maximumAmount: maximumAmount ?? _maximumAmount,
);
  int? get id => _id;
  String? get code => _code;
  String? get amount => _amount;
  String? get status => _status;
  String? get dateCreated => _dateCreated;
  String? get dateCreatedGmt => _dateCreatedGmt;
  String? get dateModified => _dateModified;
  String? get dateModifiedGmt => _dateModifiedGmt;
  String? get discountType => _discountType;
  String? get description => _description;
  String? get dateExpires => _dateExpires;
  String? get dateExpiresGmt => _dateExpiresGmt;
  num? get usageCount => _usageCount;
  bool? get individualUse => _individualUse;
  dynamic get usageLimit => _usageLimit;
  num? get usageLimitPerUser => _usageLimitPerUser;
  dynamic get limitUsageToXItems => _limitUsageToXItems;
  bool? get freeShipping => _freeShipping;
  bool? get excludeSaleItems => _excludeSaleItems;
  String? get minimumAmount => _minimumAmount;
  String? get maximumAmount => _maximumAmount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['code'] = _code;
    map['amount'] = _amount;
    map['status'] = _status;
    map['date_created'] = _dateCreated;
    map['date_created_gmt'] = _dateCreatedGmt;
    map['date_modified'] = _dateModified;
    map['date_modified_gmt'] = _dateModifiedGmt;
    map['discount_type'] = _discountType;
    map['description'] = _description;
    map['date_expires'] = _dateExpires;
    map['date_expires_gmt'] = _dateExpiresGmt;
    map['usage_count'] = _usageCount;
    map['individual_use'] = _individualUse;
    map['usage_limit'] = _usageLimit;
    map['usage_limit_per_user'] = _usageLimitPerUser;
    map['limit_usage_to_x_items'] = _limitUsageToXItems;
    map['free_shipping'] = _freeShipping;
    map['exclude_sale_items'] = _excludeSaleItems;
    map['minimum_amount'] = _minimumAmount;
    map['maximum_amount'] = _maximumAmount;
    return map;
  }

}