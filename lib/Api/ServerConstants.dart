class ServerConstants {


  static String costumerKey = "ck_315fb5facf5db03e75806655fee79848ba720a60";
  static String costumerSecret = "cs_b561bd1c830c767c9d14f60b2ed36ba0ac1ef3eb";

  static String BASE_URL = "https://ilmercatobh.com/";
  static String BASE_URL1 = "https://ilmercatobh.com/adminpanel/";


  static String tokenURL = BASE_URL+ "?rest_route=/simple-jwt-login/v1/auth";
  static String loginValidateApi = BASE_URL+ "?rest_route=/simple-jwt-login/v1/auth/validate";

  static String deleteURL = BASE_URL+ "?rest_route=/simple-jwt-login/v1/users";


  static String bannerApi = BASE_URL1 + "GetBannerApi";
  static String GetCategoryApi = BASE_URL1 + "GetCategoryApi";
  static String GetCategoryBrandApi = BASE_URL1 + "GetCategoryBrandApi";
  static String GetProductCategoryApi = BASE_URL1 + "GetProductCategoryApi";
  static String GetProductCategoryBrandApi = BASE_URL1 + "GetProductCategoryBrandApi";
  static String InsertOrderApi = BASE_URL1 + "InsertOrderApi";
  static String UpdateOrderApi = BASE_URL1 + "UpdateOrderApi";
  static String CheckOrderApi = BASE_URL1 + "CheckOrderApi";

  static String productsApi = BASE_URL + "wp-json/wc/v3/products";
  static String GetProductDetailApi = BASE_URL1 + "GetProductDetailApi";
  static String costumerURLApi = BASE_URL + "wp-json/wc/v3/customers";
  static String deliveryApi = BASE_URL + "wp-json/wc/v3/customers";
  static String orderApi = BASE_URL + "wp-json/wc/v3/orders";
  static String couponsApi = BASE_URL + "wp-json/wc/v3/coupons";
  static String pageApi = BASE_URL + "wp-json/wp/v2/pages";
  static String brandApi = BASE_URL + "wp-json/wc/v3/brands";
  static String brandAccordingProductApi = BASE_URL + "wp-json/mo/v1/brandfilter";

  static String resetApi = BASE_URL + "?rest_route=/simple-jwt-login/v1/user/reset_password";

  static String paymentGatewayApi = BASE_URL1 + "benefit";





  /* --------------------------------------------------------------- */

  static String loginApi = BASE_URL + "LoginApi";
  static String registerApi = BASE_URL + "RegisterApi";
  static String forgotPasswordApi = BASE_URL + "ForgotPassword";
  static String topCategoriesApi = BASE_URL + "TopCategories";





  static String tagFilterApi = BASE_URL + "TagFilter";

  static String particularCategoryApi = BASE_URL + "ParticularCategory";
  static String searchApi = BASE_URL + "Search";
  static String searchSuggestionProduct =
      BASE_URL + "search_suggestion_product";
  static String similarProductApi = BASE_URL + "SimilarProduct";
  static String enquiryApi = BASE_URL + "Enquiry";
  static String cmsApi = BASE_URL + "CMS";
///////////////////////////////////////////////////////////

  static String frontCategoriesApi = BASE_URL + "FrontCategories";
  static String searchPinApi = BASE_URL + "SearchPin";
  static String typeUpdateApi = BASE_URL + "TypeUpdate";
  static String selectDealerApi = BASE_URL + "SelectDealer";
  static String downloadApi = BASE_URL + "GetDownload";
  static String shippingApi = BASE_URL + "AddDeliveryAddressApi";
  static String deliveryDetailApi = BASE_URL + "DeliveryDetailApi";
  static String orderPlaceApi = BASE_URL + "OrderApi";
  static String lastOrderIdApi = BASE_URL + "LastOrderId";
  static String orderGroupApi = BASE_URL + "OrderGroup";
  static String orderDetailApi = BASE_URL + "OrderDetail";
  static String relatedProductApi = BASE_URL + "RelatedProduct";
  static String sendOTPApi = BASE_URL + "SendOTP";
  static String rateApi = BASE_URL + "RateApi";
  static String dealerPanelApi = BASE_URL + "dealerpanel";
}
