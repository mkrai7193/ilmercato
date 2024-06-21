// import 'package:flutter/cupertino.dart';
// import 'package:ilmercato/Api/LoginApi.dart';
// import 'package:ilmercato/screens/product/model/ProductsModel.dart';
//
//
// class SortBy{
//   String value;
//   String text;
//   String sortOrder;
//
//   SortBy(this.value,this.text,this.sortOrder);
// }
//
// enum LoadMoreStatus { INITIAL, LOADING, STABLE }
//
// class ProductProvider with ChangeNotifier{
//   List<ProductsModel>? _productList;
//   SortBy? _sortBy;
//
//   int pageSize = 10;
//
//   List<ProductsModel>? get allProducts => _productList;
//
//   double get totalRecords => _productList!.length.toDouble();
//
//    LoadMoreStatus _loadMoreStatus = LoadMoreStatus.STABLE;
//
//    getLoadMoreStatus() => _loadMoreStatus;
//
//    ProductProvider(){
//      resetStreams();
//      _sortBy =SortBy("modified","Latest","asc");
//    }
//
//    void resetStreams(){
//   //   _apiService = APIService();
//      _productList = <ProductsModel>[];
//    }
//
//    setLoadingState(LoadMoreStatus loadMoreStatus){
//      _loadMoreStatus = loadMoreStatus;
//      notifyListeners();
//    }
//
//    setSortOrder(SortBy sortBy){
//      _sortBy = sortBy;
//      notifyListeners();
//    }
//
//    fetchProducts(pageNumber,{
//      String? strSearch,
//      String? tagName,
//      String? categoryId,
//      String? sortBy,
//      String sortOrder ="asc",
//   }) async {
//      List<ProductsModel> itemModel = await LoginApi.productsApi(
//        categoryId,
//      );
//
//      if(itemModel.length > 0){
//        _productList!.addAll(itemModel);
//      }
//
//      setLoadingState(LoadMoreStatus.STABLE);
//      notifyListeners();
//
//    }
// }