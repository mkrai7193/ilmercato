/// id : 2148
/// parent_id : 0
/// status : "on-hold"
/// currency : "BHD"
/// version : "7.7.0"
/// prices_include_tax : false
/// date_created : "2023-07-30T11:40:51"
/// date_modified : "2023-07-30T11:40:51"
/// discount_total : "0.000"
/// discount_tax : "0.000"
/// shipping_total : "0.000"
/// shipping_tax : "0.000"
/// cart_tax : "2.500"
/// total : "27.500"
/// total_tax : "2.500"
/// customer_id : 41
/// order_key : "wc_order_rFrUvIP6wW5CZ"
/// billing : {"first_name":"ali","last_name":"alhelow","company":"","address_1":"House 425 Road 4303 Block 943","address_2":"","city":"Riffa Views","state":"","postcode":"00000","country":"BH","email":"aliloai8888@gmail.com","phone":"+97337303333"}
/// shipping : {"first_name":"ali","last_name":"alhelow","company":"","address_1":"House 425 Road 4303 Block 943","address_2":"","city":"Riffa Views","state":"","postcode":"00000","country":"BH","phone":""}
/// payment_method : "bacs"
/// payment_method_title : "Bank Transfer via Fawri+ (Benefit)"
/// transaction_id : ""
/// customer_ip_address : "193.188.113.205"
/// customer_user_agent : "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36"
/// created_via : "checkout"
/// customer_note : ""
/// date_completed : null
/// date_paid : null
/// cart_hash : "606a355d1b8a878d6c3b365474e60d35"
/// number : "2148"
/// meta_data : [{"id":27613,"key":"is_vat_exempt","value":"no"}]
/// line_items : [{"id":884,"name":"Crema E Aroma Beans (1kg)","product_id":260,"variation_id":0,"quantity":2,"tax_class":"","subtotal":"25.000","subtotal_tax":"2.500","total":"25.000","total_tax":"2.500","taxes":[{"id":2,"total":"2.5","subtotal":"2.5"}],"meta_data":[],"sku":"","price":12.5,"image":{"id":"261","src":"https://ilmercatobh.com/wp-content/uploads/2020/11/cremayaroma.jpg"},"parent_name":null}]
/// tax_lines : [{"id":886,"rate_code":"BH-VAT-1","rate_id":2,"label":"VAT","compound":false,"tax_total":"2.500","shipping_tax_total":"0.000","rate_percent":10,"meta_data":[]}]
/// shipping_lines : [{"id":885,"method_title":"Delivery (Free delivery for reaching minimum order of BHD 11.000)","method_id":"flexible_shipping_single","instance_id":"4","total":"0.000","total_tax":"0.000","taxes":[],"meta_data":[{"id":7008,"key":"_default","value":"no","display_key":"_default","display_value":"no"},{"id":7009,"key":"_fs_method","value":{"title_general_settings":"","method_title":"Delivery","method_description":"","tax_heading":"","tax_status":"taxable","prices_include_tax":"no","title_free_shipping":"","method_free_shipping_requires_upselling":"order_amount","method_free_shipping":"11","method_free_shipping_label":"Free delivery for reaching minimum order of BHD 11.000","method_free_shipping_cart_notice":"yes","method_free_shipping_notice_text":"You only need %1$s more to avail of the FREE Delivery Service!","method_free_shipping_progress_bar":"yes","title_cost_calculation":"","method_calculation_method":"sum","cart_calculation":"package","title_advanced_options":"","method_visibility":"no","method_debug_mode":"no","id_for_shipping":"flexible_shipping_single:4","title":"Delivery"},"display_key":"_fs_method","display_value":{"title_general_settings":"","method_title":"Delivery","method_description":"","tax_heading":"","tax_status":"taxable","prices_include_tax":"no","title_free_shipping":"","method_free_shipping_requires_upselling":"order_amount","method_free_shipping":"11","method_free_shipping_label":"Free delivery for reaching minimum order of BHD 11.000","method_free_shipping_cart_notice":"yes","method_free_shipping_notice_text":"You only need %1$s more to avail of the FREE Delivery Service!","method_free_shipping_progress_bar":"yes","title_cost_calculation":"","method_calculation_method":"sum","cart_calculation":"package","title_advanced_options":"","method_visibility":"no","method_debug_mode":"no","id_for_shipping":"flexible_shipping_single:4","title":"Delivery"}},{"id":7010,"key":"_fs_integration","value":"no","display_key":"_fs_integration","display_value":"no"},{"id":7011,"key":"description","value":"","display_key":"description","display_value":""},{"id":7012,"key":"Items","value":"Crema E Aroma Beans (1kg) &times; 2","display_key":"Items","display_value":"Crema E Aroma Beans (1kg) &times; 2"}]}]
/// fee_lines : []
/// coupon_lines : []
/// refunds : []
/// payment_url : "https://ilmercatobh.com/checkout/order-pay/2148/?pay_for_order=true&key=wc_order_rFrUvIP6wW5CZ"
/// is_editable : true
/// needs_payment : false
/// needs_processing : true
/// date_created_gmt : "2023-07-30T11:40:51"
/// date_modified_gmt : "2023-07-30T11:40:51"
/// date_completed_gmt : null
/// date_paid_gmt : null
/// currency_symbol : "BHD"
/// _links : {"self":[{"href":"https://ilmercatobh.com/wp-json/wc/v3/orders/2148"}],"collection":[{"href":"https://ilmercatobh.com/wp-json/wc/v3/orders"}],"customer":[{"href":"https://ilmercatobh.com/wp-json/wc/v3/customers/41"}]}

class CustomerOrderModel {
  CustomerOrderModel({
      num? id, 
      num? parentId, 
      String? status, 
      String? currency, 
      String? version, 
      bool? pricesIncludeTax, 
      String? dateCreated, 
      String? dateModified, 
      String? discountTotal, 
      String? discountTax, 
      String? shippingTotal, 
      String? shippingTax, 
      String? cartTax, 
      String? total, 
      String? totalTax, 
      num? customerId, 
      String? orderKey, 
      Billing? billing, 
      Shipping? shipping, 
      String? paymentMethod, 
      String? paymentMethodTitle, 
      String? transactionId, 
      String? customerIpAddress, 
      String? customerUserAgent, 
      String? createdVia, 
      String? customerNote, 
      dynamic dateCompleted, 
      dynamic datePaid, 
      String? cartHash, 
      String? number,
      List<LineItems>? lineItems, 
      List<TaxLines>? taxLines, 
      List<ShippingLines>? shippingLines, 

      List<dynamic>? couponLines, 
      List<dynamic>? refunds, 
      String? paymentUrl, 
      bool? isEditable, 
      bool? needsPayment, 
      bool? needsProcessing, 
      String? dateCreatedGmt, 
      String? dateModifiedGmt, 
      dynamic dateCompletedGmt, 
      dynamic datePaidGmt, 
      String? currencySymbol, 
      Links? links,}){
    _id = id;
    _parentId = parentId;
    _status = status;
    _currency = currency;
    _version = version;
    _pricesIncludeTax = pricesIncludeTax;
    _dateCreated = dateCreated;
    _dateModified = dateModified;
    _discountTotal = discountTotal;
    _discountTax = discountTax;
    _shippingTotal = shippingTotal;
    _shippingTax = shippingTax;
    _cartTax = cartTax;
    _total = total;
    _totalTax = totalTax;
    _customerId = customerId;
    _orderKey = orderKey;
    _billing = billing;
    _shipping = shipping;
    _paymentMethod = paymentMethod;
    _paymentMethodTitle = paymentMethodTitle;
    _transactionId = transactionId;
    _customerIpAddress = customerIpAddress;
    _customerUserAgent = customerUserAgent;
    _createdVia = createdVia;
    _customerNote = customerNote;
    _dateCompleted = dateCompleted;
    _datePaid = datePaid;
    _cartHash = cartHash;
    _number = number;
    _lineItems = lineItems;
    _taxLines = taxLines;
    _shippingLines = shippingLines;
    _couponLines = couponLines;
    _refunds = refunds;
    _paymentUrl = paymentUrl;
    _isEditable = isEditable;
    _needsPayment = needsPayment;
    _needsProcessing = needsProcessing;
    _dateCreatedGmt = dateCreatedGmt;
    _dateModifiedGmt = dateModifiedGmt;
    _dateCompletedGmt = dateCompletedGmt;
    _datePaidGmt = datePaidGmt;
    _currencySymbol = currencySymbol;
    _links = links;
}

  CustomerOrderModel.fromJson(dynamic json) {
    _id = json['id'];
    _parentId = json['parent_id'];
    _status = json['status'];
    _currency = json['currency'];
    _version = json['version'];
    _pricesIncludeTax = json['prices_include_tax'];
    _dateCreated = json['date_created'];
    _dateModified = json['date_modified'];
    _discountTotal = json['discount_total'];
    _discountTax = json['discount_tax'];
    _shippingTotal = json['shipping_total'];
    _shippingTax = json['shipping_tax'];
    _cartTax = json['cart_tax'];
    _total = json['total'];
    _totalTax = json['total_tax'];
    _customerId = json['customer_id'];
    _orderKey = json['order_key'];
    _billing = json['billing'] != null ? Billing.fromJson(json['billing']) : null;
    _shipping = json['shipping'] != null ? Shipping.fromJson(json['shipping']) : null;
    _paymentMethod = json['payment_method'];
    _paymentMethodTitle = json['payment_method_title'];
    _transactionId = json['transaction_id'];
    _customerIpAddress = json['customer_ip_address'];
    _customerUserAgent = json['customer_user_agent'];
    _createdVia = json['created_via'];
    _customerNote = json['customer_note'];
    _dateCompleted = json['date_completed'];
    _datePaid = json['date_paid'];
    _cartHash = json['cart_hash'];
    _number = json['number'];

    if (json['line_items'] != null) {
      _lineItems = [];
      json['line_items'].forEach((v) {
        _lineItems?.add(LineItems.fromJson(v));
      });
    }
    if (json['tax_lines'] != null) {
      _taxLines = [];
      json['tax_lines'].forEach((v) {
        _taxLines?.add(TaxLines.fromJson(v));
      });
    }
    if (json['shipping_lines'] != null) {
      _shippingLines = [];
      json['shipping_lines'].forEach((v) {
        _shippingLines?.add(ShippingLines.fromJson(v));
      });
    }


    _paymentUrl = json['payment_url'];
    _isEditable = json['is_editable'];
    _needsPayment = json['needs_payment'];
    _needsProcessing = json['needs_processing'];
    _dateCreatedGmt = json['date_created_gmt'];
    _dateModifiedGmt = json['date_modified_gmt'];
    _dateCompletedGmt = json['date_completed_gmt'];
    _datePaidGmt = json['date_paid_gmt'];
    _currencySymbol = json['currency_symbol'];
    _links = json['_links'] != null ? Links.fromJson(json['_links']) : null;
  }
  num? _id;
  num? _parentId;
  String? _status;
  String? _currency;
  String? _version;
  bool? _pricesIncludeTax;
  String? _dateCreated;
  String? _dateModified;
  String? _discountTotal;
  String? _discountTax;
  String? _shippingTotal;
  String? _shippingTax;
  String? _cartTax;
  String? _total;
  String? _totalTax;
  num? _customerId;
  String? _orderKey;
  Billing? _billing;
  Shipping? _shipping;
  String? _paymentMethod;
  String? _paymentMethodTitle;
  String? _transactionId;
  String? _customerIpAddress;
  String? _customerUserAgent;
  String? _createdVia;
  String? _customerNote;
  dynamic _dateCompleted;
  dynamic _datePaid;
  String? _cartHash;
  String? _number;
  List<LineItems>? _lineItems;
  List<TaxLines>? _taxLines;
  List<ShippingLines>? _shippingLines;
  List<dynamic>? _feeLines;
  List<dynamic>? _couponLines;
  List<dynamic>? _refunds;
  String? _paymentUrl;
  bool? _isEditable;
  bool? _needsPayment;
  bool? _needsProcessing;
  String? _dateCreatedGmt;
  String? _dateModifiedGmt;
  dynamic _dateCompletedGmt;
  dynamic _datePaidGmt;
  String? _currencySymbol;
  Links? _links;
CustomerOrderModel copyWith({  num? id,
  num? parentId,
  String? status,
  String? currency,
  String? version,
  bool? pricesIncludeTax,
  String? dateCreated,
  String? dateModified,
  String? discountTotal,
  String? discountTax,
  String? shippingTotal,
  String? shippingTax,
  String? cartTax,
  String? total,
  String? totalTax,
  num? customerId,
  String? orderKey,
  Billing? billing,
  Shipping? shipping,
  String? paymentMethod,
  String? paymentMethodTitle,
  String? transactionId,
  String? customerIpAddress,
  String? customerUserAgent,
  String? createdVia,
  String? customerNote,
  dynamic dateCompleted,
  dynamic datePaid,
  String? cartHash,
  String? number,
  List<LineItems>? lineItems,
  List<TaxLines>? taxLines,
  List<ShippingLines>? shippingLines,
  List<dynamic>? feeLines,
  List<dynamic>? couponLines,
  List<dynamic>? refunds,
  String? paymentUrl,
  bool? isEditable,
  bool? needsPayment,
  bool? needsProcessing,
  String? dateCreatedGmt,
  String? dateModifiedGmt,
  dynamic dateCompletedGmt,
  dynamic datePaidGmt,
  String? currencySymbol,
  Links? links,
}) => CustomerOrderModel(  id: id ?? _id,
  parentId: parentId ?? _parentId,
  status: status ?? _status,
  currency: currency ?? _currency,
  version: version ?? _version,
  pricesIncludeTax: pricesIncludeTax ?? _pricesIncludeTax,
  dateCreated: dateCreated ?? _dateCreated,
  dateModified: dateModified ?? _dateModified,
  discountTotal: discountTotal ?? _discountTotal,
  discountTax: discountTax ?? _discountTax,
  shippingTotal: shippingTotal ?? _shippingTotal,
  shippingTax: shippingTax ?? _shippingTax,
  cartTax: cartTax ?? _cartTax,
  total: total ?? _total,
  totalTax: totalTax ?? _totalTax,
  customerId: customerId ?? _customerId,
  orderKey: orderKey ?? _orderKey,
  billing: billing ?? _billing,
  shipping: shipping ?? _shipping,
  paymentMethod: paymentMethod ?? _paymentMethod,
  paymentMethodTitle: paymentMethodTitle ?? _paymentMethodTitle,
  transactionId: transactionId ?? _transactionId,
  customerIpAddress: customerIpAddress ?? _customerIpAddress,
  customerUserAgent: customerUserAgent ?? _customerUserAgent,
  createdVia: createdVia ?? _createdVia,
  customerNote: customerNote ?? _customerNote,
  dateCompleted: dateCompleted ?? _dateCompleted,
  datePaid: datePaid ?? _datePaid,
  cartHash: cartHash ?? _cartHash,
  number: number ?? _number,
  lineItems: lineItems ?? _lineItems,
  taxLines: taxLines ?? _taxLines,
  shippingLines: shippingLines ?? _shippingLines,
  couponLines: couponLines ?? _couponLines,
  refunds: refunds ?? _refunds,
  paymentUrl: paymentUrl ?? _paymentUrl,
  isEditable: isEditable ?? _isEditable,
  needsPayment: needsPayment ?? _needsPayment,
  needsProcessing: needsProcessing ?? _needsProcessing,
  dateCreatedGmt: dateCreatedGmt ?? _dateCreatedGmt,
  dateModifiedGmt: dateModifiedGmt ?? _dateModifiedGmt,
  dateCompletedGmt: dateCompletedGmt ?? _dateCompletedGmt,
  datePaidGmt: datePaidGmt ?? _datePaidGmt,
  currencySymbol: currencySymbol ?? _currencySymbol,
  links: links ?? _links,
);
  num? get id => _id;
  num? get parentId => _parentId;
  String? get status => _status;
  String? get currency => _currency;
  String? get version => _version;
  bool? get pricesIncludeTax => _pricesIncludeTax;
  String? get dateCreated => _dateCreated;
  String? get dateModified => _dateModified;
  String? get discountTotal => _discountTotal;
  String? get discountTax => _discountTax;
  String? get shippingTotal => _shippingTotal;
  String? get shippingTax => _shippingTax;
  String? get cartTax => _cartTax;
  String? get total => _total;
  String? get totalTax => _totalTax;
  num? get customerId => _customerId;
  String? get orderKey => _orderKey;
  Billing? get billing => _billing;
  Shipping? get shipping => _shipping;
  String? get paymentMethod => _paymentMethod;
  String? get paymentMethodTitle => _paymentMethodTitle;
  String? get transactionId => _transactionId;
  String? get customerIpAddress => _customerIpAddress;
  String? get customerUserAgent => _customerUserAgent;
  String? get createdVia => _createdVia;
  String? get customerNote => _customerNote;
  dynamic get dateCompleted => _dateCompleted;
  dynamic get datePaid => _datePaid;
  String? get cartHash => _cartHash;
  String? get number => _number;
  List<LineItems>? get lineItems => _lineItems;
  List<TaxLines>? get taxLines => _taxLines;
  List<ShippingLines>? get shippingLines => _shippingLines;
  List<dynamic>? get feeLines => _feeLines;
  List<dynamic>? get couponLines => _couponLines;
  List<dynamic>? get refunds => _refunds;
  String? get paymentUrl => _paymentUrl;
  bool? get isEditable => _isEditable;
  bool? get needsPayment => _needsPayment;
  bool? get needsProcessing => _needsProcessing;
  String? get dateCreatedGmt => _dateCreatedGmt;
  String? get dateModifiedGmt => _dateModifiedGmt;
  dynamic get dateCompletedGmt => _dateCompletedGmt;
  dynamic get datePaidGmt => _datePaidGmt;
  String? get currencySymbol => _currencySymbol;
  Links? get links => _links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['parent_id'] = _parentId;
    map['status'] = _status;
    map['currency'] = _currency;
    map['version'] = _version;
    map['prices_include_tax'] = _pricesIncludeTax;
    map['date_created'] = _dateCreated;
    map['date_modified'] = _dateModified;
    map['discount_total'] = _discountTotal;
    map['discount_tax'] = _discountTax;
    map['shipping_total'] = _shippingTotal;
    map['shipping_tax'] = _shippingTax;
    map['cart_tax'] = _cartTax;
    map['total'] = _total;
    map['total_tax'] = _totalTax;
    map['customer_id'] = _customerId;
    map['order_key'] = _orderKey;
    if (_billing != null) {
      map['billing'] = _billing?.toJson();
    }
    if (_shipping != null) {
      map['shipping'] = _shipping?.toJson();
    }
    map['payment_method'] = _paymentMethod;
    map['payment_method_title'] = _paymentMethodTitle;
    map['transaction_id'] = _transactionId;
    map['customer_ip_address'] = _customerIpAddress;
    map['customer_user_agent'] = _customerUserAgent;
    map['created_via'] = _createdVia;
    map['customer_note'] = _customerNote;
    map['date_completed'] = _dateCompleted;
    map['date_paid'] = _datePaid;
    map['cart_hash'] = _cartHash;
    map['number'] = _number;

    if (_lineItems != null) {
      map['line_items'] = _lineItems?.map((v) => v.toJson()).toList();
    }
    if (_taxLines != null) {
      map['tax_lines'] = _taxLines?.map((v) => v.toJson()).toList();
    }
    if (_shippingLines != null) {
      map['shipping_lines'] = _shippingLines?.map((v) => v.toJson()).toList();
    }


    if (_refunds != null) {
      map['refunds'] = _refunds?.map((v) => v.toJson()).toList();
    }
    map['payment_url'] = _paymentUrl;
    map['is_editable'] = _isEditable;
    map['needs_payment'] = _needsPayment;
    map['needs_processing'] = _needsProcessing;
    map['date_created_gmt'] = _dateCreatedGmt;
    map['date_modified_gmt'] = _dateModifiedGmt;
    map['date_completed_gmt'] = _dateCompletedGmt;
    map['date_paid_gmt'] = _datePaidGmt;
    map['currency_symbol'] = _currencySymbol;
    if (_links != null) {
      map['_links'] = _links?.toJson();
    }
    return map;
  }

}

/// self : [{"href":"https://ilmercatobh.com/wp-json/wc/v3/orders/2148"}]
/// collection : [{"href":"https://ilmercatobh.com/wp-json/wc/v3/orders"}]
/// customer : [{"href":"https://ilmercatobh.com/wp-json/wc/v3/customers/41"}]

class Links {
  Links({
      List<Self>? self, 
      List<Collection>? collection, 
      List<Customer>? customer,}){
    _self = self;
    _collection = collection;
    _customer = customer;
}

  Links.fromJson(dynamic json) {
    if (json['self'] != null) {
      _self = [];
      json['self'].forEach((v) {
        _self?.add(Self.fromJson(v));
      });
    }
    if (json['collection'] != null) {
      _collection = [];
      json['collection'].forEach((v) {
        _collection?.add(Collection.fromJson(v));
      });
    }
    if (json['customer'] != null) {
      _customer = [];
      json['customer'].forEach((v) {
        _customer?.add(Customer.fromJson(v));
      });
    }
  }
  List<Self>? _self;
  List<Collection>? _collection;
  List<Customer>? _customer;
Links copyWith({  List<Self>? self,
  List<Collection>? collection,
  List<Customer>? customer,
}) => Links(  self: self ?? _self,
  collection: collection ?? _collection,
  customer: customer ?? _customer,
);
  List<Self>? get self => _self;
  List<Collection>? get collection => _collection;
  List<Customer>? get customer => _customer;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_self != null) {
      map['self'] = _self?.map((v) => v.toJson()).toList();
    }
    if (_collection != null) {
      map['collection'] = _collection?.map((v) => v.toJson()).toList();
    }
    if (_customer != null) {
      map['customer'] = _customer?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// href : "https://ilmercatobh.com/wp-json/wc/v3/customers/41"

class Customer {
  Customer({
      String? href,}){
    _href = href;
}

  Customer.fromJson(dynamic json) {
    _href = json['href'];
  }
  String? _href;
Customer copyWith({  String? href,
}) => Customer(  href: href ?? _href,
);
  String? get href => _href;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['href'] = _href;
    return map;
  }

}

/// href : "https://ilmercatobh.com/wp-json/wc/v3/orders"

class Collection {
  Collection({
      String? href,}){
    _href = href;
}

  Collection.fromJson(dynamic json) {
    _href = json['href'];
  }
  String? _href;
Collection copyWith({  String? href,
}) => Collection(  href: href ?? _href,
);
  String? get href => _href;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['href'] = _href;
    return map;
  }

}

/// href : "https://ilmercatobh.com/wp-json/wc/v3/orders/2148"

class Self {
  Self({
      String? href,}){
    _href = href;
}

  Self.fromJson(dynamic json) {
    _href = json['href'];
  }
  String? _href;
Self copyWith({  String? href,
}) => Self(  href: href ?? _href,
);
  String? get href => _href;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['href'] = _href;
    return map;
  }

}

/// id : 885
/// method_title : "Delivery (Free delivery for reaching minimum order of BHD 11.000)"
/// method_id : "flexible_shipping_single"
/// instance_id : "4"
/// total : "0.000"
/// total_tax : "0.000"
/// taxes : []
/// meta_data : [{"id":7008,"key":"_default","value":"no","display_key":"_default","display_value":"no"},{"id":7009,"key":"_fs_method","value":{"title_general_settings":"","method_title":"Delivery","method_description":"","tax_heading":"","tax_status":"taxable","prices_include_tax":"no","title_free_shipping":"","method_free_shipping_requires_upselling":"order_amount","method_free_shipping":"11","method_free_shipping_label":"Free delivery for reaching minimum order of BHD 11.000","method_free_shipping_cart_notice":"yes","method_free_shipping_notice_text":"You only need %1$s more to avail of the FREE Delivery Service!","method_free_shipping_progress_bar":"yes","title_cost_calculation":"","method_calculation_method":"sum","cart_calculation":"package","title_advanced_options":"","method_visibility":"no","method_debug_mode":"no","id_for_shipping":"flexible_shipping_single:4","title":"Delivery"},"display_key":"_fs_method","display_value":{"title_general_settings":"","method_title":"Delivery","method_description":"","tax_heading":"","tax_status":"taxable","prices_include_tax":"no","title_free_shipping":"","method_free_shipping_requires_upselling":"order_amount","method_free_shipping":"11","method_free_shipping_label":"Free delivery for reaching minimum order of BHD 11.000","method_free_shipping_cart_notice":"yes","method_free_shipping_notice_text":"You only need %1$s more to avail of the FREE Delivery Service!","method_free_shipping_progress_bar":"yes","title_cost_calculation":"","method_calculation_method":"sum","cart_calculation":"package","title_advanced_options":"","method_visibility":"no","method_debug_mode":"no","id_for_shipping":"flexible_shipping_single:4","title":"Delivery"}},{"id":7010,"key":"_fs_integration","value":"no","display_key":"_fs_integration","display_value":"no"},{"id":7011,"key":"description","value":"","display_key":"description","display_value":""},{"id":7012,"key":"Items","value":"Crema E Aroma Beans (1kg) &times; 2","display_key":"Items","display_value":"Crema E Aroma Beans (1kg) &times; 2"}]

class ShippingLines {
  ShippingLines({
      num? id, 
      String? methodTitle, 
      String? methodId, 
      String? instanceId, 
      String? total, 
      String? totalTax, }){
    _id = id;
    _methodTitle = methodTitle;
    _methodId = methodId;
    _instanceId = instanceId;
    _total = total;
    _totalTax = totalTax;
}

  ShippingLines.fromJson(dynamic json) {
    _id = json['id'];
    _methodTitle = json['method_title'];
    _methodId = json['method_id'];
    _instanceId = json['instance_id'];
    _total = json['total'];
    _totalTax = json['total_tax'];


  }
  num? _id;
  String? _methodTitle;
  String? _methodId;
  String? _instanceId;
  String? _total;
  String? _totalTax;
ShippingLines copyWith({  num? id,
  String? methodTitle,
  String? methodId,
  String? instanceId,
  String? total,
  String? totalTax,
}) => ShippingLines(  id: id ?? _id,
  methodTitle: methodTitle ?? _methodTitle,
  methodId: methodId ?? _methodId,
  instanceId: instanceId ?? _instanceId,
  total: total ?? _total,
  totalTax: totalTax ?? _totalTax,
);
  num? get id => _id;
  String? get methodTitle => _methodTitle;
  String? get methodId => _methodId;
  String? get instanceId => _instanceId;
  String? get total => _total;
  String? get totalTax => _totalTax;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['method_title'] = _methodTitle;
    map['method_id'] = _methodId;
    map['instance_id'] = _instanceId;
    map['total'] = _total;
    map['total_tax'] = _totalTax;
    return map;
  }

}


/// id : 886
/// rate_code : "BH-VAT-1"
/// rate_id : 2
/// label : "VAT"
/// compound : false
/// tax_total : "2.500"
/// shipping_tax_total : "0.000"
/// rate_percent : 10
/// meta_data : []

class TaxLines {
  TaxLines({
      num? id, 
      String? rateCode, 
      num? rateId, 
      String? label, 
      bool? compound, 
      String? taxTotal, 
      String? shippingTaxTotal, 
      num? ratePercent, 
      List<dynamic>? metaData,}){
    _id = id;
    _rateCode = rateCode;
    _rateId = rateId;
    _label = label;
    _compound = compound;
    _taxTotal = taxTotal;
    _shippingTaxTotal = shippingTaxTotal;
    _ratePercent = ratePercent;
    _metaData = metaData;
}

  TaxLines.fromJson(dynamic json) {
    _id = json['id'];
    _rateCode = json['rate_code'];
    _rateId = json['rate_id'];
    _label = json['label'];
    _compound = json['compound'];
    _taxTotal = json['tax_total'];
    _shippingTaxTotal = json['shipping_tax_total'];
    _ratePercent = json['rate_percent'];

  }
  num? _id;
  String? _rateCode;
  num? _rateId;
  String? _label;
  bool? _compound;
  String? _taxTotal;
  String? _shippingTaxTotal;
  num? _ratePercent;
  List<dynamic>? _metaData;
TaxLines copyWith({  num? id,
  String? rateCode,
  num? rateId,
  String? label,
  bool? compound,
  String? taxTotal,
  String? shippingTaxTotal,
  num? ratePercent,
  List<dynamic>? metaData,
}) => TaxLines(  id: id ?? _id,
  rateCode: rateCode ?? _rateCode,
  rateId: rateId ?? _rateId,
  label: label ?? _label,
  compound: compound ?? _compound,
  taxTotal: taxTotal ?? _taxTotal,
  shippingTaxTotal: shippingTaxTotal ?? _shippingTaxTotal,
  ratePercent: ratePercent ?? _ratePercent,
  metaData: metaData ?? _metaData,
);
  num? get id => _id;
  String? get rateCode => _rateCode;
  num? get rateId => _rateId;
  String? get label => _label;
  bool? get compound => _compound;
  String? get taxTotal => _taxTotal;
  String? get shippingTaxTotal => _shippingTaxTotal;
  num? get ratePercent => _ratePercent;
  List<dynamic>? get metaData => _metaData;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['rate_code'] = _rateCode;
    map['rate_id'] = _rateId;
    map['label'] = _label;
    map['compound'] = _compound;
    map['tax_total'] = _taxTotal;
    map['shipping_tax_total'] = _shippingTaxTotal;
    map['rate_percent'] = _ratePercent;
    if (_metaData != null) {
      map['meta_data'] = _metaData?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 884
/// name : "Crema E Aroma Beans (1kg)"
/// product_id : 260
/// variation_id : 0
/// quantity : 2
/// tax_class : ""
/// subtotal : "25.000"
/// subtotal_tax : "2.500"
/// total : "25.000"
/// total_tax : "2.500"
/// taxes : [{"id":2,"total":"2.5","subtotal":"2.5"}]
/// meta_data : []
/// sku : ""
/// price : 12.5
/// image : {"id":"261","src":"https://ilmercatobh.com/wp-content/uploads/2020/11/cremayaroma.jpg"}
/// parent_name : null

class LineItems {
  LineItems({
      num? id, 
      String? name, 
      num? productId, 
      num? variationId, 
      num? quantity, 
      String? taxClass, 
      String? subtotal, 
      String? subtotalTax, 
      String? total, 
      String? totalTax, 
      List<Taxes>? taxes, 
      List<dynamic>? metaData, 
      String? sku, 
      num? price, 
      Image? image, 
      dynamic parentName,}){
    _id = id;
    _name = name;
    _productId = productId;
    _variationId = variationId;
    _quantity = quantity;
    _taxClass = taxClass;
    _subtotal = subtotal;
    _subtotalTax = subtotalTax;
    _total = total;
    _totalTax = totalTax;
    _taxes = taxes;
    _metaData = metaData;
    _sku = sku;
    _price = price;
    _image = image;
    _parentName = parentName;
}

  LineItems.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _productId = json['product_id'];
    _variationId = json['variation_id'];
    _quantity = json['quantity'];
    _taxClass = json['tax_class'];
    _subtotal = json['subtotal'];
    _subtotalTax = json['subtotal_tax'];
    _total = json['total'];
    _totalTax = json['total_tax'];
    if (json['taxes'] != null) {
      _taxes = [];
      json['taxes'].forEach((v) {
        _taxes?.add(Taxes.fromJson(v));
      });
    }

    _sku = json['sku'];
    _price = json['price'];
    _image = json['image'] != null ? Image.fromJson(json['image']) : null;
    _parentName = json['parent_name'];
  }
  num? _id;
  String? _name;
  num? _productId;
  num? _variationId;
  num? _quantity;
  String? _taxClass;
  String? _subtotal;
  String? _subtotalTax;
  String? _total;
  String? _totalTax;
  List<Taxes>? _taxes;
  List<dynamic>? _metaData;
  String? _sku;
  num? _price;
  Image? _image;
  dynamic _parentName;
LineItems copyWith({  num? id,
  String? name,
  num? productId,
  num? variationId,
  num? quantity,
  String? taxClass,
  String? subtotal,
  String? subtotalTax,
  String? total,
  String? totalTax,
  List<Taxes>? taxes,
  List<dynamic>? metaData,
  String? sku,
  num? price,
  Image? image,
  dynamic parentName,
}) => LineItems(  id: id ?? _id,
  name: name ?? _name,
  productId: productId ?? _productId,
  variationId: variationId ?? _variationId,
  quantity: quantity ?? _quantity,
  taxClass: taxClass ?? _taxClass,
  subtotal: subtotal ?? _subtotal,
  subtotalTax: subtotalTax ?? _subtotalTax,
  total: total ?? _total,
  totalTax: totalTax ?? _totalTax,
  taxes: taxes ?? _taxes,
  metaData: metaData ?? _metaData,
  sku: sku ?? _sku,
  price: price ?? _price,
  image: image ?? _image,
  parentName: parentName ?? _parentName,
);
  num? get id => _id;
  String? get name => _name;
  num? get productId => _productId;
  num? get variationId => _variationId;
  num? get quantity => _quantity;
  String? get taxClass => _taxClass;
  String? get subtotal => _subtotal;
  String? get subtotalTax => _subtotalTax;
  String? get total => _total;
  String? get totalTax => _totalTax;
  List<Taxes>? get taxes => _taxes;
  List<dynamic>? get metaData => _metaData;
  String? get sku => _sku;
  num? get price => _price;
  Image? get image => _image;
  dynamic get parentName => _parentName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['product_id'] = _productId;
    map['variation_id'] = _variationId;
    map['quantity'] = _quantity;
    map['tax_class'] = _taxClass;
    map['subtotal'] = _subtotal;
    map['subtotal_tax'] = _subtotalTax;
    map['total'] = _total;
    map['total_tax'] = _totalTax;
    if (_taxes != null) {
      map['taxes'] = _taxes?.map((v) => v.toJson()).toList();
    }
    if (_metaData != null) {
      map['meta_data'] = _metaData?.map((v) => v.toJson()).toList();
    }
    map['sku'] = _sku;
    map['price'] = _price;
    if (_image != null) {
      map['image'] = _image?.toJson();
    }
    map['parent_name'] = _parentName;
    return map;
  }

}

/// id : "261"
/// src : "https://ilmercatobh.com/wp-content/uploads/2020/11/cremayaroma.jpg"

class Image {
  Image({
      String? id, 
      String? src,}){
    _id = id;
    _src = src;
}

  Image.fromJson(dynamic json) {
    _id = json['id'];
    _src = json['src'];
  }
  String? _id;
  String? _src;
Image copyWith({  String? id,
  String? src,
}) => Image(  id: id ?? _id,
  src: src ?? _src,
);
  String? get id => _id;
  String? get src => _src;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['src'] = _src;
    return map;
  }

}

/// id : 2
/// total : "2.5"
/// subtotal : "2.5"

class Taxes {
  Taxes({
      num? id, 
      String? total, 
      String? subtotal,}){
    _id = id;
    _total = total;
    _subtotal = subtotal;
}

  Taxes.fromJson(dynamic json) {
    _id = json['id'];
    _total = json['total'];
    _subtotal = json['subtotal'];
  }
  num? _id;
  String? _total;
  String? _subtotal;
Taxes copyWith({  num? id,
  String? total,
  String? subtotal,
}) => Taxes(  id: id ?? _id,
  total: total ?? _total,
  subtotal: subtotal ?? _subtotal,
);
  num? get id => _id;
  String? get total => _total;
  String? get subtotal => _subtotal;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['total'] = _total;
    map['subtotal'] = _subtotal;
    return map;
  }

}


/// first_name : "ali"
/// last_name : "alhelow"
/// company : ""
/// address_1 : "House 425 Road 4303 Block 943"
/// address_2 : ""
/// city : "Riffa Views"
/// state : ""
/// postcode : "00000"
/// country : "BH"
/// phone : ""

class Shipping {
  Shipping({
      String? firstName, 
      String? lastName, 
      String? company, 
      String? address1, 
      String? address2, 
      String? city, 
      String? state, 
      String? postcode, 
      String? country, 
      String? phone,}){
    _firstName = firstName;
    _lastName = lastName;
    _company = company;
    _address1 = address1;
    _address2 = address2;
    _city = city;
    _state = state;
    _postcode = postcode;
    _country = country;
    _phone = phone;
}

  Shipping.fromJson(dynamic json) {
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _company = json['company'];
    _address1 = json['address_1'];
    _address2 = json['address_2'];
    _city = json['city'];
    _state = json['state'];
    _postcode = json['postcode'];
    _country = json['country'];
    _phone = json['phone'];
  }
  String? _firstName;
  String? _lastName;
  String? _company;
  String? _address1;
  String? _address2;
  String? _city;
  String? _state;
  String? _postcode;
  String? _country;
  String? _phone;
Shipping copyWith({  String? firstName,
  String? lastName,
  String? company,
  String? address1,
  String? address2,
  String? city,
  String? state,
  String? postcode,
  String? country,
  String? phone,
}) => Shipping(  firstName: firstName ?? _firstName,
  lastName: lastName ?? _lastName,
  company: company ?? _company,
  address1: address1 ?? _address1,
  address2: address2 ?? _address2,
  city: city ?? _city,
  state: state ?? _state,
  postcode: postcode ?? _postcode,
  country: country ?? _country,
  phone: phone ?? _phone,
);
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get company => _company;
  String? get address1 => _address1;
  String? get address2 => _address2;
  String? get city => _city;
  String? get state => _state;
  String? get postcode => _postcode;
  String? get country => _country;
  String? get phone => _phone;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['first_name'] = _firstName;
    map['last_name'] = _lastName;
    map['company'] = _company;
    map['address_1'] = _address1;
    map['address_2'] = _address2;
    map['city'] = _city;
    map['state'] = _state;
    map['postcode'] = _postcode;
    map['country'] = _country;
    map['phone'] = _phone;
    return map;
  }

}

/// first_name : "ali"
/// last_name : "alhelow"
/// company : ""
/// address_1 : "House 425 Road 4303 Block 943"
/// address_2 : ""
/// city : "Riffa Views"
/// state : ""
/// postcode : "00000"
/// country : "BH"
/// email : "aliloai8888@gmail.com"
/// phone : "+97337303333"

class Billing {
  Billing({
      String? firstName, 
      String? lastName, 
      String? company, 
      String? address1, 
      String? address2, 
      String? city, 
      String? state, 
      String? postcode, 
      String? country, 
      String? email, 
      String? phone,}){
    _firstName = firstName;
    _lastName = lastName;
    _company = company;
    _address1 = address1;
    _address2 = address2;
    _city = city;
    _state = state;
    _postcode = postcode;
    _country = country;
    _email = email;
    _phone = phone;
}

  Billing.fromJson(dynamic json) {
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _company = json['company'];
    _address1 = json['address_1'];
    _address2 = json['address_2'];
    _city = json['city'];
    _state = json['state'];
    _postcode = json['postcode'];
    _country = json['country'];
    _email = json['email'];
    _phone = json['phone'];
  }
  String? _firstName;
  String? _lastName;
  String? _company;
  String? _address1;
  String? _address2;
  String? _city;
  String? _state;
  String? _postcode;
  String? _country;
  String? _email;
  String? _phone;
Billing copyWith({  String? firstName,
  String? lastName,
  String? company,
  String? address1,
  String? address2,
  String? city,
  String? state,
  String? postcode,
  String? country,
  String? email,
  String? phone,
}) => Billing(  firstName: firstName ?? _firstName,
  lastName: lastName ?? _lastName,
  company: company ?? _company,
  address1: address1 ?? _address1,
  address2: address2 ?? _address2,
  city: city ?? _city,
  state: state ?? _state,
  postcode: postcode ?? _postcode,
  country: country ?? _country,
  email: email ?? _email,
  phone: phone ?? _phone,
);
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get company => _company;
  String? get address1 => _address1;
  String? get address2 => _address2;
  String? get city => _city;
  String? get state => _state;
  String? get postcode => _postcode;
  String? get country => _country;
  String? get email => _email;
  String? get phone => _phone;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['first_name'] = _firstName;
    map['last_name'] = _lastName;
    map['company'] = _company;
    map['address_1'] = _address1;
    map['address_2'] = _address2;
    map['city'] = _city;
    map['state'] = _state;
    map['postcode'] = _postcode;
    map['country'] = _country;
    map['email'] = _email;
    map['phone'] = _phone;
    return map;
  }

}