/// status : "200"
/// data : {"records":[{"pid":"2","psku":"Pro1002","p_name":"Earring Design 1002","p_main_category":"1","p_subcategory":"1","p_subcategory2":"4","p_rate":"26265","p_weight":"5.00","purity":"20","purity_value":"87","p_img":"https://sjbullion.co.in/dynamic/esunaar/vendor/assets/images/product/product2.png"},{"pid":"3","psku":"S110","p_name":"Chain","p_main_category":"1","p_subcategory":"1","p_subcategory2":"3","p_rate":"32136","p_weight":"6.00","purity":"20","purity_value":"87","p_img":"https://sjbullion.co.in/dynamic/esunaar/vendor/assets/images/product/Bangles-03.jpg"},{"pid":"11","psku":"S110","p_name":"Bangle 01","p_main_category":"1","p_subcategory":"1","p_subcategory2":"2","p_rate":"52530","p_weight":"10.00","purity":"20","purity_value":"87","p_img":"https://sjbullion.co.in/dynamic/esunaar/vendor/assets/images/product/Bangles-01.jpg"},{"pid":"12","psku":"S110","p_name":"Bangle 02","p_main_category":"1","p_subcategory":"1","p_subcategory2":"2","p_rate":"42024","p_weight":"8.00","purity":"20","purity_value":"87","p_img":"https://sjbullion.co.in/dynamic/esunaar/vendor/assets/images/product/Bangles-02.jpg"},{"pid":"13","psku":"S110","p_name":"Bangle 03","p_main_category":"1","p_subcategory":"1","p_subcategory2":"2","p_rate":"42024","p_weight":"8.00","purity":"20","purity_value":"87","p_img":"https://sjbullion.co.in/dynamic/esunaar/vendor/assets/images/product/Bangles-03.jpg"},{"pid":"14","psku":"S110","p_name":"Bangle 04","p_main_category":"1","p_subcategory":"1","p_subcategory2":"2","p_rate":"49903","p_weight":"9.50","purity":"20","purity_value":"87","p_img":"https://sjbullion.co.in/dynamic/esunaar/vendor/assets/images/product/Bangles-04.jpg"},{"pid":"15","psku":"S110","p_name":"Bangle 05","p_main_category":"1","p_subcategory":"1","p_subcategory2":"2","p_rate":"28891","p_weight":"5.50","purity":"20","purity_value":"87","p_img":"https://sjbullion.co.in/dynamic/esunaar/vendor/assets/images/product/Bangles-05.jpg"},{"pid":"16","psku":"S110","p_name":"Bangle 06","p_main_category":"1","p_subcategory":"1","p_subcategory2":"2","p_rate":"38084","p_weight":"7.25","purity":"20","purity_value":"87","p_img":"https://sjbullion.co.in/dynamic/esunaar/vendor/assets/images/product/Bangles-06.jpg"},{"pid":"18","psku":"S110","p_name":"Ring 11","p_main_category":"1","p_subcategory":"1","p_subcategory2":"5","p_rate":"22062","p_weight":"4.20","purity":"20","purity_value":"87","p_img":"https://sjbullion.co.in/dynamic/esunaar/vendor/assets/images/product/Bangles-07.jpg"},{"pid":"4","psku":"S110","p_name":"Ring 02","p_main_category":"9","p_subcategory":"9","p_subcategory2":"4","p_rate":"14175","p_weight":"2.50","purity":"22","purity_value":"95","p_img":"https://sjbullion.co.in/dynamic/esunaar/vendor/assets/images/product/Bangles-04.jpg"}]}
/// message : "Success"

class SimilarProductModel {
  SimilarProductModel({
      String? status, 
      Data? data, 
      String? message,}){
    _status = status;
    _data = data;
    _message = message;
}

  SimilarProductModel.fromJson(dynamic json) {
    _status = json['status'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _message = json['message'];
  }
  String? _status;
  Data? _data;
  String? _message;
SimilarProductModel copyWith({  String? status,
  Data? data,
  String? message,
}) => SimilarProductModel(  status: status ?? _status,
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

/// records : [{"pid":"1","psku":"Ring1","p_name":"Ring1","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/1.jpeg"},{"pid":"2","psku":"Ring2","p_name":"Ring2","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/2.jpeg"},{"pid":"3","psku":"Ring3","p_name":"Ring3","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/3.jpeg"},{"pid":"4","psku":"Ring4","p_name":"Ring4","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/4.jpeg"},{"pid":"5","psku":"Ring5","p_name":"Ring5","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/5.jpeg"},{"pid":"6","psku":"Ring6","p_name":"Ring6","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/6.jpeg"},{"pid":"7","psku":"Ring7","p_name":"Ring7","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/7.jpeg"},{"pid":"8","psku":"Ring8","p_name":"Ring8","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/8.jpeg"},{"pid":"9","psku":"Ring9","p_name":"Ring9","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/9.jpeg"},{"pid":"10","psku":"Ring10","p_name":"Ring10","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/10.jpeg"},{"pid":"11","psku":"Ring11","p_name":"Ring11","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/11.jpeg"},{"pid":"12","psku":"Ring12","p_name":"Ring12","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/12.jpeg"},{"pid":"13","psku":"Ring13","p_name":"Ring13","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/13.jpeg"},{"pid":"14","psku":"Ring14","p_name":"Ring14","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/14.jpeg"},{"pid":"15","psku":"Ring15","p_name":"Ring15","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/15.jpeg"},{"pid":"16","psku":"Ring16","p_name":"Ring16","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/16.jpeg"},{"pid":"17","psku":"Ring17","p_name":"Ring17","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/17.jpeg"},{"pid":"18","psku":"Ring18","p_name":"Ring18","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/18.jpeg"},{"pid":"19","psku":"Ring19","p_name":"Ring19","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/19.jpeg"},{"pid":"20","psku":"Ring20","p_name":"Ring20","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/20.jpeg"},{"pid":"21","psku":"Ring21","p_name":"Ring21","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/21.jpeg"},{"pid":"22","psku":"Ring22","p_name":"Ring22","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/22.jpeg"},{"pid":"23","psku":"Ring23","p_name":"Ring23","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/23.jpeg"},{"pid":"24","psku":"Ring24","p_name":"Ring24","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/24.jpeg"},{"pid":"25","psku":"Ring25","p_name":"Ring25","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/25.jpeg"},{"pid":"26","psku":"Ring26","p_name":"Ring26","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/26.jpeg"},{"pid":"27","psku":"Ring27","p_name":"Ring27","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/27.jpeg"},{"pid":"28","psku":"Ring28","p_name":"Ring28","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/28.jpeg"},{"pid":"29","psku":"Ring29","p_name":"Ring29","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/29.jpeg"},{"pid":"30","psku":"Ring30","p_name":"Ring30","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/30.jpeg"},{"pid":"31","psku":"Ring31","p_name":"Ring31","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/31.jpeg"},{"pid":"32","psku":"Ring32","p_name":"Ring32","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/32.jpeg"},{"pid":"33","psku":"Ring33","p_name":"Ring33","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/33.jpeg"},{"pid":"34","psku":"Ring34","p_name":"Ring34","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/34.jpeg"},{"pid":"35","psku":"Ring35","p_name":"Ring35","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/35.jpeg"},{"pid":"36","psku":"Ring36","p_name":"Ring36","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/36.jpeg"},{"pid":"37","psku":"Ring37","p_name":"Ring37","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/37.jpeg"},{"pid":"38","psku":"Ring38","p_name":"Ring38","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/38.jpeg"},{"pid":"39","psku":"Ring39","p_name":"Ring39","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/39.jpeg"},{"pid":"40","psku":"Ring40","p_name":"Ring40","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/40.jpeg"},{"pid":"41","psku":"Ring41","p_name":"Ring41","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/41.jpeg"},{"pid":"42","psku":"Ring42","p_name":"Ring42","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/42.jpeg"},{"pid":"43","psku":"Ring43","p_name":"Ring43","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/43.jpeg"},{"pid":"44","psku":"Ring44","p_name":"Ring44","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/44.jpeg"},{"pid":"45","psku":"Ring45","p_name":"Ring45","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/45.jpeg"},{"pid":"46","psku":"Ring46","p_name":"Ring46","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/46.jpeg"},{"pid":"47","psku":"Ring47","p_name":"Ring47","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/47.jpeg"},{"pid":"48","psku":"Ring48","p_name":"Ring48","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/48.jpeg"},{"pid":"49","psku":"Ring49","p_name":"Ring49","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/49.jpeg"},{"pid":"50","psku":"Ring50","p_name":"Ring50","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/50.jpeg"},{"pid":"51","psku":"Ring51","p_name":"Ring51","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/51.jpeg"},{"pid":"52","psku":"Ring52","p_name":"Ring52","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/52.jpeg"},{"pid":"53","psku":"Ring53","p_name":"Ring53","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/53.jpeg"},{"pid":"54","psku":"Ring54","p_name":"Ring54","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/54.jpeg"},{"pid":"55","psku":"Ring55","p_name":"Ring55","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/55.jpeg"},{"pid":"56","psku":"Ring56","p_name":"Ring56","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/56.jpeg"},{"pid":"57","psku":"Ring57","p_name":"Ring57","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/57.jpeg"},{"pid":"58","psku":"Ring58","p_name":"Ring58","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/58.jpeg"},{"pid":"59","psku":"Ring59","p_name":"Ring59","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/59.jpeg"},{"pid":"60","psku":"Ring60","p_name":"Ring60","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/60.jpeg"},{"pid":"61","psku":"Ring61","p_name":"Ring61","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/61.jpeg"},{"pid":"62","psku":"Ring62","p_name":"Ring62","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/62.jpeg"},{"pid":"63","psku":"Ring63","p_name":"Ring63","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/63.jpeg"},{"pid":"64","psku":"Ring64","p_name":"Ring64","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/64.jpeg"},{"pid":"65","psku":"Ring65","p_name":"Ring65","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/65.jpeg"},{"pid":"66","psku":"Ring66","p_name":"Ring66","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/66.jpeg"},{"pid":"67","psku":"Ring67","p_name":"Ring67","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/67.jpeg"},{"pid":"68","psku":"Ring68","p_name":"Ring68","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/68.jpeg"},{"pid":"69","psku":"Ring69","p_name":"Ring69","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/69.jpeg"},{"pid":"70","psku":"Ring70","p_name":"Ring70","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/70.jpeg"},{"pid":"71","psku":"Ring71","p_name":"Ring71","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/71.jpeg"},{"pid":"72","psku":"Ring72","p_name":"Ring72","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/72.jpeg"},{"pid":"73","psku":"Ring73","p_name":"Ring73","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/73.jpeg"},{"pid":"74","psku":"Ring74","p_name":"Ring74","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/74.jpeg"},{"pid":"75","psku":"Ring75","p_name":"Ring75","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/75.jpeg"},{"pid":"76","psku":"Ring76","p_name":"Ring76","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/76.jpeg"},{"pid":"77","psku":"Ring77","p_name":"Ring77","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/77.jpeg"},{"pid":"78","psku":"Ring78","p_name":"Ring78","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/78.jpeg"},{"pid":"79","psku":"Ring79","p_name":"Ring79","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/79.jpeg"},{"pid":"80","psku":"Ring80","p_name":"Ring80","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/80.jpeg"},{"pid":"81","psku":"Ring81","p_name":"Ring81","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/81.jpeg"},{"pid":"82","psku":"Ring82","p_name":"Ring82","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/82.jpeg"},{"pid":"83","psku":"Ring83","p_name":"Ring83","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/83.jpeg"},{"pid":"84","psku":"Ring84","p_name":"Ring84","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/84.jpeg"},{"pid":"85","psku":"Ring85","p_name":"Ring85","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/85.jpeg"},{"pid":"86","psku":"Ring86","p_name":"Ring86","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/86.jpeg"},{"pid":"87","psku":"Ring87","p_name":"Ring87","p_gold_wt":"0.50","p_diamond_wt":"0.23","p_img":"https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/87.jpeg"}]

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

/// pid : "1"
/// psku : "Ring1"
/// p_name : "Ring1"
/// p_gold_wt : "0.50"
/// p_diamond_wt : "0.23"
/// p_img : "https://sjbullion.co.in/dynamic/kamal/vendor/assets/images/product/1.jpeg"

class Records {
  Records({
    String? pid,
    String? psku,
    String? pName,
    String? pGoldWt,
    String? pDiamondWt,
    String? pImg,}) {
    _pid = pid;
    _psku = psku;
    _pName = pName;
    _pGoldWt = pGoldWt;
    _pDiamondWt = pDiamondWt;
    _pImg = pImg;
  }

  Records.fromJson(dynamic json) {
    _pid = json['pid'];
    _psku = json['psku'];
    _pName = json['p_name'];
    _pGoldWt = json['p_gold_wt'];
    _pDiamondWt = json['p_diamond_wt'];
    _pImg = json['p_img'];
  }

  String? _pid;
  String? _psku;
  String? _pName;
  String? _pGoldWt;
  String? _pDiamondWt;
  String? _pImg;

  Records copyWith({ String? pid,
    String? psku,
    String? pName,
    String? pGoldWt,
    String? pDiamondWt,
    String? pImg,
  }) =>
      Records(
        pid: pid ?? _pid,
        psku: psku ?? _psku,
        pName: pName ?? _pName,
        pGoldWt: pGoldWt ?? _pGoldWt,
        pDiamondWt: pDiamondWt ?? _pDiamondWt,
        pImg: pImg ?? _pImg,
      );

  String? get pid => _pid;

  String? get psku => _psku;

  String? get pName => _pName;

  String? get pGoldWt => _pGoldWt;

  String? get pDiamondWt => _pDiamondWt;

  String? get pImg => _pImg;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['pid'] = _pid;
    map['psku'] = _psku;
    map['p_name'] = _pName;
    map['p_gold_wt'] = _pGoldWt;
    map['p_diamond_wt'] = _pDiamondWt;
    map['p_img'] = _pImg;
    return map;
  }
}

