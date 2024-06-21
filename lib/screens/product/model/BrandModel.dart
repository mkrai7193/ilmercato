/// term_id : 45
/// name : "Althaus Tea"
/// slug : "althaus"
/// term_group : 0
/// term_taxonomy_id : 45
/// taxonomy : "pwb-brand"
/// description : "Althaus is <b>a German tea producer combining experience and modern production methods</b>. The brand is exclusively distributed by IL Mercato in the Kingdom of Bahrain. Althaus is a team of specialists led by Ralf Janicki, a professional tea taster, blends the knowledge derived from long tea traditions with a modern approach. As a result, classic blends as well as compositions with a twist are created."
/// parent : 0
/// count : 60
/// filter : "raw"
/// brand_image : ["https://ilmercatobh.com/wp-content/uploads/2023/05/Althaus-150x150.jpg",150,150,true]
/// brand_banner : false

class BrandModel {
  BrandModel({
      num? termId, 
      String? name, 
      String? slug, 
      num? termGroup, 
      num? termTaxonomyId, 
      String? taxonomy, 
      String? description, 
      num? parent, 
      num? count, 
      String? filter, 
      List<String>? brandImage, 
      bool? brandBanner,}){
    _termId = termId;
    _name = name;
    _slug = slug;
    _termGroup = termGroup;
    _termTaxonomyId = termTaxonomyId;
    _taxonomy = taxonomy;
    _description = description;
    _parent = parent;
    _count = count;
    _filter = filter;
    _brandImage = brandImage;
    _brandBanner = brandBanner;
}

  BrandModel.fromJson(dynamic json) {
    _termId = json['term_id'];
    _name = json['name'];
    _slug = json['slug'];
    _termGroup = json['term_group'];
    _termTaxonomyId = json['term_taxonomy_id'];
    _taxonomy = json['taxonomy'];
    _description = json['description'];
    _parent = json['parent'];
    _count = json['count'];
    _filter = json['filter'];
    _brandImage = json['brand_image'] != null ? json['brand_image'].cast<String>() : [];
    _brandBanner = json['brand_banner'];
  }
  num? _termId;
  String? _name;
  String? _slug;
  num? _termGroup;
  num? _termTaxonomyId;
  String? _taxonomy;
  String? _description;
  num? _parent;
  num? _count;
  String? _filter;
  List<String>? _brandImage;
  bool? _brandBanner;
BrandModel copyWith({  num? termId,
  String? name,
  String? slug,
  num? termGroup,
  num? termTaxonomyId,
  String? taxonomy,
  String? description,
  num? parent,
  num? count,
  String? filter,
  List<String>? brandImage,
  bool? brandBanner,
}) => BrandModel(  termId: termId ?? _termId,
  name: name ?? _name,
  slug: slug ?? _slug,
  termGroup: termGroup ?? _termGroup,
  termTaxonomyId: termTaxonomyId ?? _termTaxonomyId,
  taxonomy: taxonomy ?? _taxonomy,
  description: description ?? _description,
  parent: parent ?? _parent,
  count: count ?? _count,
  filter: filter ?? _filter,
  brandImage: brandImage ?? _brandImage,
  brandBanner: brandBanner ?? _brandBanner,
);
  num? get termId => _termId;
  String? get name => _name;
  String? get slug => _slug;
  num? get termGroup => _termGroup;
  num? get termTaxonomyId => _termTaxonomyId;
  String? get taxonomy => _taxonomy;
  String? get description => _description;
  num? get parent => _parent;
  num? get count => _count;
  String? get filter => _filter;
  List<String>? get brandImage => _brandImage;
  bool? get brandBanner => _brandBanner;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['term_id'] = _termId;
    map['name'] = _name;
    map['slug'] = _slug;
    map['term_group'] = _termGroup;
    map['term_taxonomy_id'] = _termTaxonomyId;
    map['taxonomy'] = _taxonomy;
    map['description'] = _description;
    map['parent'] = _parent;
    map['count'] = _count;
    map['filter'] = _filter;
    map['brand_image'] = _brandImage;
    map['brand_banner'] = _brandBanner;
    return map;
  }

}