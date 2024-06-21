//
// import 'package:ilmercato/components/amount_utils.dart';
// import 'package:ilmercato/components/coustom_bottom_nav_bar.dart';
// import 'package:ilmercato/components/default_button.dart';
// import 'package:ilmercato/constants.dart';
// import 'package:ilmercato/enums.dart';
// import 'package:ilmercato/main.dart';
// import 'package:ilmercato/screens/payment/payment.dart';
// import 'package:ilmercato/screens/shipping/shipping_screen.dart';
// import 'package:ilmercato/screens/cart/model/boxes.dart';
// import 'package:flutter/material.dart';
// import 'package:ilmercato/screens/sign_in/sign_in_screen.dart';
// import 'package:ilmercato/screens/thankyou/thankyou.dart';
//
// class CheckoutCard extends StatefulWidget {
//
//    CheckoutCard({
//     Key? key
//   }) : super(key: key);
//
//   @override
//   _CheckoutCardState createState() => _CheckoutCardState();
// }
//
// class _CheckoutCardState extends State<CheckoutCard> {
//
//
//   double amount =0.0;
//
//   double markingCharges =0.0;
//
//   int hallmark =0;
//
//   double finalPrice =0.0;
//
//   int totalQuantity = ShopCartsH().totalQuantity;
//
//   String fineWeight = generatePercentString(ShopCartsH().totalFineWeight.toDouble());
//
//   getAmount()
//   {
//       amount = double.parse(fineWeight) ;
//     return amount;
//   }
//
//   getMarkingCharges()
//   {
//     if(prefs!.getString("type")=="Customer") {
//       markingCharges = getAmount() * 5 / 100;
//     }
//     return markingCharges;
//   }
//
//   getHallmark()
//   {
//     hallmark = ShopCartsH().totalQuantity*35;
//     return hallmark;
//   }
//
//   getFinalPrice()
//   {
//   //  finalPrice =  getAmount()+getMarkingCharges()+getHallmark();
//     finalPrice = double.parse(ShopCartsH().totalAmount.toString());
//     prefs!.setString("grandTotal",finalPrice.toStringAsFixed(0));
//     return finalPrice;
//   }
//
//   bool _isVisible = false;
//
//   void showToast() {
//     setState(() {
//       _isVisible = !_isVisible;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(30),
//           topRight: Radius.circular(30),
//         ),
//         boxShadow: [
//           BoxShadow(
//             offset: Offset(0, -15),
//             blurRadius: 20,
//             color: Color(0xFFDADADA).withOpacity(0.15),
//           )
//         ],
//       ),
//       child: SingleChildScrollView(
//         child: Column(
//
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               decoration: BoxDecoration(
//                 //  border: Border.all(color: kTextColor,width:1),
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(10),
//                   topRight: Radius.circular(10),
//                 ),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 10.0),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       flex: 2,
//                       // width: MediaQuery.of(context).size.width/2.,
//                       // alignment: AlignmentDirectional.bottomStart,
//                       child: Text.rich(
//                         TextSpan(
//                           text: "BD 1200.5",style: listText,
//                           children: [
//                             // TextSpan(
//                             //   text: "BD 1000.5",
//                             //   style: TextStyle(fontSize: 18, color:Colors.black),
//                             // ),
//                           ],
//                         ),
//                       ),
//                     ),
//                    Spacer(),
//                     MediumDefaultButton(
//                       text: "CONTINUE",
//                       press: (){
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => ThankYou()));
//                       },
//                     )
//                   ],
//                 ),
//
//               ),
//
//             ),
//             CustomBottomNavBar(selectedMenu: MenuState.home),
//             // Container(
//             //   alignment: AlignmentDirectional.center,
//             //   child: SizedBox(
//             //     width: 190,
//             //     child: ElevatedButton(
//             //       child:Text("Check Out", style:TextStyle(color: kPrimaryLightColor)),
//             //       onPressed: () {
//             //         Navigator.pushReplacement(context, MaterialPageRoute(
//             //             builder: (context) =>ShippingScreen()));
//             //       },
//             //     ),
//             //   ),
//             // ),
//
//           ],
//         ),
//       ),
//     );
//   }
// }
//
