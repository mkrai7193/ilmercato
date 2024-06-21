import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ilmercato/Api/LoginApi.dart';
import 'package:ilmercato/main.dart';
import 'package:ilmercato/screens/cart/model/shoppingcartH.dart';
import 'package:ilmercato/screens/checkout/model/deliveryModel.dart';
import 'package:ilmercato/screens/home/home_screen.dart';
import 'package:ilmercato/screens/order/model/OrderModel.dart';
import 'package:ilmercato/screens/thankyou/thankyou.dart';
import 'package:ilmercato/size_config.dart';


class OrderScreen extends StatefulWidget {
  static String routeName = "/order";
  final DeliveryModel deliveryModel;
  final String paymentMethod;
  final String status;
  final List<ShoppingCartH> shoppingCart;
  final double total;

  const OrderScreen({Key? key, required this.deliveryModel, required this.shoppingCart, required this.status, required this.paymentMethod, required this.total }) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {

  bool isApiCallProcess =false;

  bool setPaid = false;

  @override
  void initState() {
    // TODO: implement initState
    order();
    super.initState();
  }

  OrderModel  newModel = OrderModel();

  void order(){

   setPaid = false;

    List<LineItems> list = [];
    List<ShippingLines> shippingLi = [];

    widget.shoppingCart.forEach((element) {
      list.add(new LineItems(
        productId: element.pid,
        name: element.proName.toString(),
        price: element.rate.toStringAsFixed(3),
        quantity: element.quantity,
        variationId: 0,
      ));
    });


 shippingLi.add(new ShippingLines(
   methodId: "Flat Rate",
   methodTitle: "flat_rate",
   total: "${prefs!.getDouble("shipping").toString()}",
 ));

     newModel = new OrderModel(
       lineItems:list,
       customerId: int.parse(prefs!.getString("id").toString()),
       paymentMethod: widget.paymentMethod,
       paymentMethodTitle: "Cash on delivery",
       setPaid: setPaid,
       status: "on-hold",
       shippingLines:shippingLi,
       billing: Billing(
         firstName: widget.deliveryModel.billing1!.firstName,
         email: widget.deliveryModel.billing1!.email,
         phone: widget.deliveryModel.billing1!.phone,
         lastName: "",
         address1: widget.deliveryModel.billing1!.address1,
         address2: "",
         city: widget.deliveryModel.billing1!.city,
         state: widget.deliveryModel.billing1!.state,
         country: widget.deliveryModel.billing1!.country,
         postcode: widget.deliveryModel.billing1!.postcode,
       ),
        currency:"BHD",
        shipping: Shipping(
          firstName: widget.deliveryModel.billing1!.firstName,
          lastName: "",
          address1: widget.deliveryModel.billing1!.address1,
          address2: "",
          city: widget.deliveryModel.billing1!.city,
          state: widget.deliveryModel.billing1!.state,
          country: widget.deliveryModel.billing1!.country,
          postcode: widget.deliveryModel.billing1!.postcode,
        ),
    );

    LoginApi.createOrderApi(newModel).then((ret) {
       if (ret) {
             Navigator.pushAndRemoveUntil(
              context,
              new MaterialPageRoute(
                builder: (BuildContext context) => new ThankYou(),
              ),
                  (route) => true,
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
    Container(
        alignment: AlignmentDirectional.center,
        child: const CircularProgressIndicator.adaptive()):   Container(
        alignment: AlignmentDirectional.center,
        child: const CircularProgressIndicator.adaptive());
  }
}
