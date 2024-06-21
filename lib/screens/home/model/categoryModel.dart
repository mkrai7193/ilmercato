class CategoryModel {
  CategoryModel({
    int? id,
    String? name,
    int? parent,
    Image2? image,}) {
    _id = id;
    _name = name;
    _parent = parent;
    _image = image;
  }

  CategoryModel.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _parent = json['parent'];
    _image = json['image'] != null ? Image2.fromJson(json['image']) : null;
  }

  int? _id;
  String? _name;
  int? _parent;
  Image2? _image;

  int? get id => _id;

  String? get name => _name;

  int? get parent => _parent;

  Image2? get image => _image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['parent'] = _parent;
    if (_image != null) {
      map['image'] = _image?.toJson();
    }
    return map;
  }
}

  class Image2 {
    Image2({
  num? id,
  String? dateCreated,
  String? dateCreatedGmt,
  String? dateModified,
  String? dateModifiedGmt,
  String? src,
  String? name,
  String? alt,}){
  _id = id;
  _dateCreated = dateCreated;
  _dateCreatedGmt = dateCreatedGmt;
  _dateModified = dateModified;
  _dateModifiedGmt = dateModifiedGmt;
  _src = src;
  _name = name;
  _alt = alt;
  }

    Image2.fromJson(dynamic json) {
  _id = json['id'];
  _dateCreated = json['date_created'];
  _dateCreatedGmt = json['date_created_gmt'];
  _dateModified = json['date_modified'];
  _dateModifiedGmt = json['date_modified_gmt'];
  _src = json['src'];
  _name = json['name'];
  _alt = json['alt'];
  }
  num? _id;
  String? _dateCreated;
  String? _dateCreatedGmt;
  String? _dateModified;
  String? _dateModifiedGmt;
  String? _src;
  String? _name;
  String? _alt;
    Image2 copyWith({  num? id,
  String? dateCreated,
  String? dateCreatedGmt,
  String? dateModified,
  String? dateModifiedGmt,
  String? src,
  String? name,
  String? alt,
  }) => Image2(  id: id ?? _id,
  dateCreated: dateCreated ?? _dateCreated,
  dateCreatedGmt: dateCreatedGmt ?? _dateCreatedGmt,
  dateModified: dateModified ?? _dateModified,
  dateModifiedGmt: dateModifiedGmt ?? _dateModifiedGmt,
  src: src ?? _src,
  name: name ?? _name,
  alt: alt ?? _alt,
  );
  num? get id => _id;
  String? get dateCreated => _dateCreated;
  String? get dateCreatedGmt => _dateCreatedGmt;
  String? get dateModified => _dateModified;
  String? get dateModifiedGmt => _dateModifiedGmt;
  String? get src => _src;
  String? get name => _name;
  String? get alt => _alt;

  Map<String, dynamic> toJson() {
  final map = <String, dynamic>{};
  map['id'] = _id;
  map['date_created'] = _dateCreated;
  map['date_created_gmt'] = _dateCreatedGmt;
  map['date_modified'] = _dateModified;
  map['date_modified_gmt'] = _dateModifiedGmt;
  map['src'] = _src;
  map['name'] = _name;
  map['alt'] = _alt;
  return map;
  }
}

//
// class CategoryModel {
//   final int? id;
//   final String? name;
//   final int? subCat;
//   final String? image;
//
//
//   CategoryModel({
//     required this.id,
//     required this.name,
//     required this.subCat,
//     required this.image,
//   });
//
//   factory CategoryModel.fromJson(Map<String, dynamic> json) {
//     return CategoryModel(
//       id: json['id'],
//       name: json['name'],
//       subCat: json['parent'],
//       image: json['image'],
//     );
//   }
// }
