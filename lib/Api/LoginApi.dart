import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:ilmercato/main.dart';
import 'package:ilmercato/models/BannerModel.dart';
import 'package:ilmercato/models/ThankModel.dart';
import 'package:ilmercato/models/UserdeleteModel.dart';
import 'package:ilmercato/screens/checkout/model/deliveryModel.dart';
import 'package:ilmercato/screens/contentpage/model/contentModel.dart';
import 'package:ilmercato/screens/coupon/model/CouponModel.dart';
import 'package:ilmercato/screens/dashboard/model/CustomerOrderModel.dart';
import 'package:ilmercato/screens/dashboard/model/OrderDetailModel.dart';
import 'package:ilmercato/screens/forgotP/model/simpleForgotPassword.dart';
import 'package:ilmercato/screens/home/model/NewCategoryModel.dart';
import 'package:ilmercato/screens/order/model/OrderModel.dart';
import 'package:ilmercato/screens/product/model/BrandModel.dart';
import 'package:ilmercato/screens/product/model/NewCategoryBrandModel.dart';
import 'package:ilmercato/screens/product/model/NewProductCategoryModel.dart';
import 'package:ilmercato/screens/sign_in/model/JWTtokenModel.dart';
import 'package:ilmercato/screens/sign_in/model/SimpleLoginModel.dart';
import 'package:ilmercato/screens/sign_up/model/customerModel.dart';
import 'package:ilmercato/screens/sign_up/model/registerModel.dart';
import 'ApiHelper.dart';
import 'ServerConstants.dart';

class LoginApi {

  static Future<JwTtokenModel> tokenURL(payload) async {
    Response response = await ApiHelper.getDioClient()
        .post(ServerConstants.tokenURL, data: payload);
    return JwTtokenModel.fromJson(response.data);
  }


  static Future<SimpleLoginModel> loginValidateApi(payload) async {
    Response response1 = await Dio()
        .post(ServerConstants.loginValidateApi, data: payload);
    return SimpleLoginModel.fromJson(response1.data);
  }

  static Future<UserdeleteModel> deleteURL(payload) async {
    Response response = await Dio()
        .delete("${ServerConstants.deleteURL}",data: payload);
    return UserdeleteModel.fromJson(response.data);
  }


  static Future<bool> createCustomer(CustomerModel model) async {
    var authToken = base64.encode(
      utf8.encode(ServerConstants.costumerKey + ":" + ServerConstants.costumerSecret),
    );

    bool ret = false;

    try	{
      var response = await Dio().post(ServerConstants.costumerURLApi,

          data: model.toJson(),
          options: new Options(headers:{
            HttpHeaders.authorizationHeader: 'Basic $authToken',
            HttpHeaders.contentTypeHeader: "application/json"
          }));

      if(response.statusCode == 201){
        ret = true;
      }
    } on DioError catch(e){
      if(e.response!.statusCode == 404){
        ret = false;
      }else{
        ret = false;
      }
    }

    return ret;
  }
/************************* start category ****************************************/

  static Future<NewCategoryModel> GetCategoryApi(payload) async {
    Response response = await ApiHelper.getDioClient()
        .post(ServerConstants.GetCategoryApi, data: payload);

    return NewCategoryModel.fromJson(response.data);
  }

  static Future<NewCategoryBrandModel> GetCategoryBrandApi(payload) async {
    Response response = await ApiHelper.getDioClient()
        .post(ServerConstants.GetCategoryBrandApi, data: payload);

    return NewCategoryBrandModel.fromJson(response.data);
  }

  static Future<NewProductCategoryModel> GetProductCategoryApi(payload) async {
    Response response = await ApiHelper.getDioClient()
        .post(ServerConstants.GetProductCategoryApi,data: payload);

    return NewProductCategoryModel.fromJson(response.data);
  }

  static Future<NewProductCategoryModel> GetProductCategoryBrandApi(payload) async {
    Response response = await Dio()
        .post(ServerConstants.GetProductCategoryBrandApi,data: payload);

    return NewProductCategoryModel.fromJson(response.data);
  }

  static Future<ThankModel> InsertOrderApi(payload) async {
    Response response = await Dio()
        .post(ServerConstants.InsertOrderApi,data: payload);

    return ThankModel.fromJson(response.data);
  }

  static Future<ThankModel> UpdateOrderApi(payload) async {
    Response response = await Dio()
        .post(ServerConstants.UpdateOrderApi,data: payload);

    return ThankModel.fromJson(response.data);
  }

  static Future<ThankModel> CheckOrderApi(payload) async {
    Response response = await Dio()
        .post(ServerConstants.CheckOrderApi,data: payload);

    return ThankModel.fromJson(response.data);
  }

  /************************* end  category ****************************************/


  // static Future<List<ProductsModel>> productsApi(query,page,brand) async {
  //   Response response;
  //   if(brand !=0) {
  //     response = await Dio()
  //         .get(ServerConstants.brandAccordingProductApi, queryParameters: {
  //       'custom_param1': brand
  //     });
  //   }else {
  //      response = await ApiHelper.getDioClient()
  //         .get(ServerConstants.productsApi, queryParameters: {
  //       'category': query,
  //       'stock_status': "instock",
  //       'perPage': 10,
  //       'page': page
  //     });
  //   }
  //
  //   List<ProductsModel> data = (response.data as List)
  //       .map((productJson) => ProductsModel.fromJson(productJson))
  //       .toList();
  //
  //   return data;
  // }

  static Future<NewProductCategoryModel> GetProductDetailApi(payload) async {
    Response response = await Dio()
        .post("${ServerConstants.GetProductDetailApi}",data: payload);

    return NewProductCategoryModel.fromJson(response.data);
  }


  static Future<List<DeliveryModel>> deliveryApi(query) async {
    Response response = await ApiHelper.getDioClient()
        .get(ServerConstants.deliveryApi,queryParameters: {'username':query});
    List<DeliveryModel> data = (response.data as List)
        .map((productJson) => DeliveryModel.fromJson(productJson))
        .toList();
    return data;
  }



  static Future<List<BrandModel>> brandApi() async {
    Response response = await ApiHelper.getDioClient()
        .get(ServerConstants.brandApi);

    List<BrandModel> data = (response.data as List)
        .map((brandJson) => BrandModel.fromJson(brandJson))
        .toList();
    print("data $data");
    print("data $data");
    return data;
  }

  static Future<bool> createShipping(DeliveryModel model) async {
    var authToken = base64.encode(
      utf8.encode(ServerConstants.costumerKey + ":" + ServerConstants.costumerSecret),
    );

    bool ret = false;

    try	{
      var response = await Dio().post(ServerConstants.costumerURLApi,

          data: model.toJson(),
          options: new Options(headers:{
            HttpHeaders.contentTypeHeader: "application/json"
          }));

      if(response.statusCode == 201){
        ret = true;
      }
    } on DioError catch(e){
      if(e.response!.statusCode == 404){
        ret = false;
      }else{
        ret = false;
      }
    }

    return ret;
  }

  static Future<bool> createOrderApi(payload) async {
    bool ret;
    Response response = await ApiHelper.getDioClient()
        .post(ServerConstants.orderApi, data: payload);
    print(response.statusCode);
   if(response.statusCode == 201){
     ret = true;
   }else{
     ret = false;
   }
    return ret;
  }

  static Future<List<CustomerOrderModel>> myOrdersApi() async {

    Response response = await ApiHelper.getDioClient()
        .get(ServerConstants.orderApi ,queryParameters: {'customer':"${prefs!.getString('id').toString()}"});

    List<CustomerOrderModel> data = (response.data as List)
        .map((orderJson) => CustomerOrderModel.fromJson(orderJson))
        .toList();
    return data;

  }


  static Future<OrderDetailModel> myOrdersDetailApi(payout) async {

    Response response = await ApiHelper.getDioClient()
        .get("${ServerConstants.orderApi}/$payout");
    return OrderDetailModel.fromJson(response.data);
  }


  static Future<List<CouponModel>> couponApi(payload) async {

    Response response;
    if(payload == 0){
       response = await ApiHelper.getDioClient()
          .get("${ServerConstants.couponsApi}");
    }else{
       response = await ApiHelper.getDioClient()
          .get(ServerConstants.couponsApi ,queryParameters: {'id':'${prefs!.getString('id').toString()}'});
    }

    List<CouponModel> data = (response.data as List)
        .map((couponJson) => CouponModel.fromJson(couponJson))
        .toList();
    return data;
  }

  static Future<List<CouponModel>> CouponRedeem(code) async {
    Response response = await ApiHelper.getDioClient()
        .get(ServerConstants.couponsApi ,queryParameters: {'code':code});

    List<CouponModel> data = (response.data as List)
        .map((couponJson) => CouponModel.fromJson(couponJson))
        .toList();
    return data;
  }

  static Future<DeliveryModel> profileDetail(query) async {
    Response response = await ApiHelper.getDioClient()
        .get("${ServerConstants.costumerURLApi}/$query");

    return DeliveryModel.fromJson(response.data);
  }

  static Future<DeliveryModel> updateProfile(query,data) async {
    Response response = await ApiHelper.getDioClient()
        .put("${ServerConstants.costumerURLApi}/$query",data: data);
    return DeliveryModel.fromJson(response.data);
  }




  // static Future<bool> createOrder(OrderModel model) async {
  //
  //   var authToken = base64.encode(
  //     utf8.encode(ServerConstants.costumerKey + ":" + ServerConstants.costumerSecret),
  //   );
  //
  //   bool ret = false;
  //
  //   try	{
  //     var response = await Dio().post(ServerConstants.orderApi,
  //
  //         data: model.toJson(),
  //         options: new Options(headers:{
  //           HttpHeaders.authorizationHeader: 'Basic $authToken',
  //           HttpHeaders.contentTypeHeader: "application/json"
  //         }));
  //
  //     if(response.statusCode == 201){
  //       ret = true;
  //     }
  //   } on DioError catch(e){
  //     if(e.response!.statusCode == 404){
  //       ret = false;
  //     }else{
  //       ret = false;
  //     }
  //   }
  //
  //   return ret;
  // }


  static Future<RegisterModel> registerApi(payload) async {
    Response response = await ApiHelper.getDioClient()
        .post(ServerConstants.registerApi, data: payload);
    return RegisterModel.fromJson(response.data);
  }

  static Future<SimpleForgotPassword> forgotPasswordApi(payload) async {
    Response response = await ApiHelper.getDioClient()
        .post(ServerConstants.resetApi, data: payload);
    return SimpleForgotPassword.fromJson(response.data);
  }

  static Future<BannerModel> bannerApi(payload) async {
    Response response = await ApiHelper.getDioClient()
        .post(ServerConstants.bannerApi, data: payload);
    return BannerModel.fromJson(response.data);
  }

  // static Future<TopCategoryModel> topCategoriesApi() async {
  //   Response response =
  //       await ApiHelper.getDioClient().post(ServerConstants.topCategoriesApi);
  //   return TopCategoryModel.fromJson(response.data);
  // }
  //
  // static Future<ProductModel> tagFilterApi(payload) async {
  //   Response response = await ApiHelper.getDioClient()
  //       .post(ServerConstants.tagFilterApi, data: payload);
  //   return ProductModel.fromJson(response.data);
  // }
  //
  //
  // static Future<SearchModel> searchApi(payload) async {
  //   Response response = await ApiHelper.getDioClient()
  //       .post(ServerConstants.searchApi, data: payload);
  //   return SearchModel.fromJson(response.data);
  // }
  //
  // static Future<SuggestProductModel> searchSuggestionProduct() async {
  //   Response response = await ApiHelper.getDioClient()
  //       .post(ServerConstants.searchSuggestionProduct);
  //   return SuggestProductModel.fromJson(response.data);
  // }
  //
  // static Future<ProductModel> similarProductApi(payload) async {
  //   Response response = await ApiHelper.getDioClient()
  //       .post(ServerConstants.similarProductApi, data: payload);
  //   return ProductModel.fromJson(response.data);
  // }
  //
  //
  //
  //
  // // static Future<OrderModel> orderPlaceApi(payload) async {
  // //   Response response = await ApiHelper.getDioClient()
  // //       .post(ServerConstants.orderPlaceApi, data: payload);
  // //   return OrderModel.fromJson(response.data);
  // // }
  //
  // // static Future<OrderLastIdModel> lastOrderIdApi() async {
  // //   Response response =
  // //       await ApiHelper.getDioClient().post(ServerConstants.lastOrderIdApi);
  // //   return OrderLastIdModel.fromJson(response.data);
  // // }
  //
  // static Future<ProductModel> relatedProductApi(payload) async {
  //   Response response = await ApiHelper.getDioClient()
  //       .post(ServerConstants.relatedProductApi, data: payload);
  //   return ProductModel.fromJson(response.data);
  // }
  //
  // static Future<OrderDetailModel> orderDetailApi(payload) async {
  //   Response response = await ApiHelper.getDioClient()
  //       .post(ServerConstants.orderDetailApi, data: payload);
  //   return OrderDetailModel.fromJson(response.data);
  // }
  //
  // static Future<DealerDashboard> dealerPanelApi(payload) async {
  //   Response response = await ApiHelper.getDioClient()
  //       .post(ServerConstants.dealerPanelApi, data: payload);
  //   return DealerDashboard.fromJson(response.data);
  // }

  static Future<ContentModel> cmsApi(payload) async {
    Response response = await ApiHelper.getDioClient()
        .get("${ServerConstants.pageApi}/$payload");
    return ContentModel.fromJson(response.data);
  }
}
