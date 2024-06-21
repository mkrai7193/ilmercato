import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ilmercato/Api/LoginApi.dart';
import 'package:ilmercato/main.dart';
import 'package:ilmercato/screens/cart/model/boxes.dart';
import 'package:ilmercato/screens/cart/model/shoppingcartH.dart';
import 'package:ilmercato/screens/checkout/model/deliveryModel.dart';
import 'package:ilmercato/screens/home/home_screen.dart';
import 'package:ilmercato/screens/order/model/OrderModel.dart';
import 'package:ilmercato/screens/thankyou/thankyou.dart';
import 'package:ilmercato/size_config.dart';
import 'package:ilmercato/widget/webView.dart';


class OrderScreenGate extends StatefulWidget {
  static String routeName = "/ordergate";
  final DeliveryModel deliveryModel;
  final String paymentMethod;
  final String status;
  final List<ShoppingCartH> shoppingCart;
  final double total;

  const OrderScreenGate({Key? key, required this.deliveryModel,required this.status, required this.shoppingCart, required this.paymentMethod, required this.total }) : super(key: key);

  @override
  State<OrderScreenGate> createState() => _OrderScreenGateState();
}

class _OrderScreenGateState extends State<OrderScreenGate> {

  bool isApiCallProcess =true;

  @override
  void initState() {
    // TODO: implement initState
    order();
    super.initState();
  }

  OrderModel  newModel = OrderModel();

  void order(){

    List<LineItems> list = [];

    widget.shoppingCart.forEach((element) {
      list.add(new LineItems(
        productId: element.pid,
        name: element.proName.toString(),
        price: element.rate.toStringAsFixed(3),
        quantity: element.quantity,
        variationId: 0,
      ));
    });

   var model = {

       "customerId":int.parse(prefs!.getString("id").toString()),
       "paymentMethod":widget.paymentMethod,
       "currency":"BHD",
       "status":"Pending payment",
       "firstName": widget.deliveryModel.billing1!.firstName,
       "email": widget.deliveryModel.billing1!.email,
       "phone": widget.deliveryModel.billing1!.phone,
       "address1":widget.deliveryModel.billing1!.address1,
       "city": widget.deliveryModel.billing1!.city,
       "state": widget.deliveryModel.billing1!.state,
       "country": widget.deliveryModel.billing1!.country,
       "postcode": widget.deliveryModel.billing1!.postcode
   };

    LoginApi.InsertOrderApi({
      "customerId":int.parse(prefs!.getString("id").toString()),
      "paymentMethod":widget.paymentMethod,
      "currency":"BHD",
      "status":"Pending payment",
      "firstName": widget.deliveryModel.billing1!.firstName,
      "email": widget.deliveryModel.billing1!.email,
      "phone": widget.deliveryModel.billing1!.phone,
      "address1":widget.deliveryModel.billing1!.address1,
      "city": widget.deliveryModel.billing1!.city,
      "state": widget.deliveryModel.billing1!.state,
      "country": widget.deliveryModel.billing1!.country,
      "postcode": widget.deliveryModel.billing1!.postcode
    }).then((ret) {

      if (ret.status == "200") {

       Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WebView1(deliveryModel: widget.deliveryModel, paymentMethod: "Benefit", shoppingCart:widget.shoppingCart,total: ShopCartsH().finalAmount, orderno:"${ret.data}"),
          ),
        );

      Fluttertoast.showToast(msg: "Successfully Order");

      } else {
        setState((){
          isApiCallProcess = true;
        });
        Fluttertoast.showToast(msg: "Order Not Complete");
        Navigator.pushAndRemoveUntil(
          context,
          new MaterialPageRoute(
            builder: (BuildContext context) => new HomeScreen(),
          ),
              (route) => true,
        );


      }
    });

 }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return (isApiCallProcess == true)?
    CircularProgressIndicator():CircularProgressIndicator();
  }
}
