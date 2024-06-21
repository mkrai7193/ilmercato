// import 'package:flutter/material.dart';
// import 'package:hive/hive.dart';
// import 'package:ilmercato/Api/LoginApi.dart';
// import 'package:ilmercato/main.dart';
// import 'package:ilmercato/screens/cart/model/boxes.dart';
// import 'package:ilmercato/screens/cart/model/shoppingcartH.dart';
// import 'package:ilmercato/screens/order/OrderDetail.dart';
// import 'package:ilmercato/screens/order/model/OrderModel.dart';
//
// // DateTime now = DateTime.now();
// // String formattedDate = DateFormat('kk:mm:ss').format(now);
//
// class Body extends StatefulWidget {
//   final String deId;
//   final String lastOrderId;
//
//   const Body({Key? key, required this.deId, required this.lastOrderId})
//       : super(key: key);
//   @override
//   _BodyState createState() => _BodyState();
// }
//
// class _BodyState extends State<Body> {
//   var dealer = "1";
//   orderPlace() {
//     var loginResponse;
//     double liveRate = 5000.0;
//
//     if (prefs!.getString("type") == "Dealer") {
//       dealer = prefs!.getString("id").toString();
//     } else {
//       dealer = prefs!.getString("dealer_id").toString();
//     }
//
//     ShopCartsH().boxes.forEach(
//           (value) => loginResponse = LoginApi.orderPlaceApi({
//             "dealer_id": dealer,
//             "login_id": prefs!.getString("id"),
//             "order_no": widget.lastOrderId,
//             "de_id": widget.deId,
//             "p_id": value.pid,
//             "p_quantity": value.quantity,
//             "p_weight": value.weight,
//             "sub_purity": value.purity,
//             "sub_purity_value": value.purityValue,
//             "live_rate": liveRate,
//             "p_price": value.rate,
//             "p_total": (value.weight * value.purityValue / 100 * liveRate) *
//                 value.quantity,
//             "grand_total": prefs!.getString("grandTotal"),
//             "status": "Placed",
//           }),
//         );
//     return loginResponse;
//     //  loginResponse.then((value1) async {
//     //    if (value1.status == "200") {
//     //
//     //      Hive.box<ShoppingCartH>('ShopCartsH').clear();
//     //      //    Navigator.pushNamed(context, RegOtpScreen.routeName);
//     //    //  _showMyDialog("${value1.message.toString()}");
//     //      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${value1.message.toString()}"),),);
//     //
//     //    }else{
//     //    //  _showMyDialog("${value1.message.toString()}");
//     //      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${value1.message.toString()}"),),);
//     //    }
//     //  });
//   }
//
//   Future<void> _showMyDialog(message) async {
//     return showDialog<void>(
//       context: context,
//       barrierDismissible: false, // user must tap button!
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('${message.toString()}'),
//           actions: <Widget>[
//             TextButton(
//               child: const Text('OK'),
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<OrderModel>(
//       future: orderPlace(),
//       builder: (context, snapshot) {
//         // Checking if future is resolved or not
//         if (snapshot.connectionState == ConnectionState.done) {
//           if (snapshot.hasData) {
//             if (snapshot.data!.status == "200") {
//               //     Hive.box<ShoppingCartH>('ShopCartsH').clear();
//
//               //  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${snapshot.data!.message.toString()}")));
//               Hive.box<ShoppingCartH>('ShopCartsH').clear();
//               return OrderDetail(orderNo: snapshot.data!.data.toString());
//             }
//           } else if (snapshot.hasError) {
//             return Container(
//                 alignment: AlignmentDirectional.center,
//                 child: Text("Technical Issue! Please Try Again"));
//           }
//         }
//         return Container(
//             alignment: AlignmentDirectional.center,
//             child: const CircularProgressIndicator.adaptive());
//       },
//     );
//
//     // return Column(
//     //   children: [
//     //     SizedBox(height: SizeConfig.screenHeight * 0.04),
//     //     Image.asset(
//     //       "assets/images/success.png",
//     //       height: SizeConfig.screenHeight * 0.4, //40%
//     //     ),
//     //     SizedBox(height: SizeConfig.screenHeight * 0.08),
//     //     Text(
//     //       "Order Placed Success",
//     //       style: TextStyle(
//     //         fontSize: 30,
//     //         fontWeight: FontWeight.bold,
//     //         color: Colors.black,
//     //       ),
//     //     ),
//     //     Spacer(),
//     //     SizedBox(
//     //       width: SizeConfig.screenWidth * 0.6,
//     //       child: DefaultButton(
//     //         text: "Back to home",
//     //         press: () {
//     //           Navigator.pushNamed(context, HomeScreen.routeName);
//     //         },
//     //       ),
//     //     ),
//     //     Spacer(),
//     //   ],
//     // );
//   }
// }
