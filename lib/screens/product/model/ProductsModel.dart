class ProductsModel {
  ProductsModel({
    num? id,
    String? name,
    String? status,
    bool? featured,
    String? description,
    String? shortDescription,
    String? sku,
    String? price,
    String? regularPrice,
    String? salePrice,
    dynamic stockQuantity,
    String? averageRating,
    num? ratingCount,
    num? parentId,
    List<Categories>? categories,
    List<Images>? images,
    List<Brands>? brands
  }){
    _id = id;
    _name = name;
    _status = status;
    _featured = featured;
    _description = description;
    _shortDescription = shortDescription;
    _sku = sku;
    _price = price;
    _regularPrice = regularPrice;
    _salePrice = salePrice;
    _stockQuantity = stockQuantity;
    _averageRating = averageRating;
    _ratingCount = ratingCount;
    _parentId = parentId;
    _categories = categories;
    _images = images;
    _brands = brands;
  }

  ProductsModel.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _status = json['status'];
    _featured = json['featured'];
    _description = json['description'];
    _shortDescription = json['short_description'];
    _sku = json['sku'];
    _price = json['price'];
    _regularPrice = json['regular_price'];
    _salePrice = json['sale_price'];

    _stockQuantity = json['stock_quantity'];
    _averageRating = json['average_rating'];
    _ratingCount = json['rating_count'];
    _parentId = json['parent_id'];
    if (json['categories'] != null) {
      _categories = [];
      json['categories'].forEach((v) {
        _categories?.add(Categories.fromJson(v));
      });
    }
    if (json['images'] != null) {
      _images = [];
      json['images'].forEach((v) {
        _images?.add(Images.fromJson(v));
      });
    }
    if (json['brands'] != null) {
      _brands = [];
      json['brands'].forEach((v) {
        _brands?.add(Brands.fromJson(v));
      });
    }
  }
  num? _id;
  String? _name;
  String? _status;
  bool? _featured;
  String? _description;
  String? _shortDescription;
  String? _sku;
  String? _price;
  String? _regularPrice;
  String? _salePrice;
  dynamic _stockQuantity;
  String? _averageRating;
  num? _ratingCount;
  num? _parentId;
  List<Categories>? _categories;
  List<Images>? _images;
  List<Brands>? _brands;

  ProductsModel copyWith({  num? id,
    String? name,
    String? status,
    bool? featured,
    String? description,
    String? shortDescription,
    String? sku,
    String? price,
    String? regularPrice,
    String? salePrice,
    dynamic stockQuantity,
    String? averageRating,
    num? ratingCount,
    num? parentId,
    List<Categories>? categories,
    List<Images>? images,
    List<Brands>? brands,
  }) => ProductsModel(  id: id ?? _id,
    name: name ?? _name,
    status: status ?? _status,
    featured: featured ?? _featured,
    description: description ?? _description,
    shortDescription: shortDescription ?? _shortDescription,
    sku: sku ?? _sku,
    price: price ?? _price,
    regularPrice: regularPrice ?? _regularPrice,
    salePrice: salePrice ?? _salePrice,
    stockQuantity: stockQuantity ?? _stockQuantity,
    averageRating: averageRating ?? _averageRating,
    ratingCount: ratingCount ?? _ratingCount,
    parentId: parentId ?? _parentId,
    categories: categories ?? _categories,
    images: images ?? _images,
    brands: brands ?? _brands,
  );
  num? get id => _id;
  String? get name => _name;
  String? get status => _status;
  bool? get featured => _featured;
  String? get description => _description;
  String? get shortDescription => _shortDescription;
  String? get sku => _sku;
  String? get price => _price;
  String? get regularPrice => _regularPrice;
  String? get salePrice => _salePrice;
  dynamic get stockQuantity => _stockQuantity;
  String? get averageRating => _averageRating;
  num? get ratingCount => _ratingCount;
  num? get parentId => _parentId;
  List<Categories>? get categories => _categories;
  List<Images>? get images => _images;
  List<Brands>? get brands => _brands;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['status'] = _status;
    map['featured'] = _featured;
    map['description'] = _description;
    map['short_description'] = _shortDescription;
    map['sku'] = _sku;
    map['price'] = _price;
    map['regular_price'] = _regularPrice;
    map['sale_price'] = _salePrice;
    map['stock_quantity'] = _stockQuantity;
    map['average_rating'] = _averageRating;
    map['rating_count'] = _ratingCount;
    map['parent_id'] = _parentId;
    if (_categories != null) {
      map['categories'] = _categories?.map((v) => v.toJson()).toList();
    }
    if (_images != null) {
      map['images'] = _images?.map((v) => v.toJson()).toList();
    }
    if (_brands != null) {
      map['brands'] = _brands?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 45
/// name : "Althaus Tea"
/// slug : "althaus"

class Brands {
  Brands({
    num? id,
    String? name,
    String? slug,}){
    _id = id;
    _name = name;
    _slug = slug;
  }

  Brands.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _slug = json['slug'];
  }
  num? _id;
  String? _name;
  String? _slug;
  Brands copyWith({  num? id,
    String? name,
    String? slug,
  }) => Brands(  id: id ?? _id,
    name: name ?? _name,
    slug: slug ?? _slug,
  );
  num? get id => _id;
  String? get name => _name;
  String? get slug => _slug;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['slug'] = _slug;
    return map;
  }

}


/// id : 2106
/// date_created : "2023-06-05T13:39:33"
/// date_created_gmt : "2023-06-05T13:39:33"
/// date_modified : "2023-06-05T13:39:33"
/// date_modified_gmt : "2023-06-05T13:39:33"
/// src : "https://ilmercato.com/wp-content/uploads/2023/06/loose-tea-display-neuner-althaustea-01_600x600.jpg"
/// name : "loose-tea-display-neuner-althaustea-01_600x600"
/// alt : ""

class Images {
  Images({
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

  Images.fromJson(dynamic json) {
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
  Images copyWith({  num? id,
    String? dateCreated,
    String? dateCreatedGmt,
    String? dateModified,
    String? dateModifiedGmt,
    String? src,
    String? name,
    String? alt,
  }) => Images(  id: id ?? _id,
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

/// id : 60
/// name : "Accessories"
/// slug : "accessories"

class Categories {
  Categories({
    num? id,
    String? name,
    String? slug,}){
    _id = id;
    _name = name;
    _slug = slug;
  }

  Categories.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _slug = json['slug'];
  }
  num? _id;
  String? _name;
  String? _slug;
  Categories copyWith({  num? id,
    String? name,
    String? slug,
  }) => Categories(  id: id ?? _id,
    name: name ?? _name,
    slug: slug ?? _slug,
  );
  num? get id => _id;
  String? get name => _name;
  String? get slug => _slug;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['slug'] = _slug;
    return map;
  }

}