// // ignore_for_file: deprecated_member_use
//
// import 'package:ilmercato/screens/cart/components/cart_card.dart';
// import 'package:ilmercato/screens/cart/model/shoppingcartH.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
//
// class Body extends StatefulWidget {
//   final List<ShoppingCartH> shoppingCart;
//
//   const Body({Key? key,required this.shoppingCart}) : super(key: key);
//
//   @override
//   _BodyState createState() => _BodyState();
// }
//
//
// class _BodyState extends State<Body> {
//
//
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//
//           ListView.builder(
//             shrinkWrap: true,
//               scrollDirection: Axis.vertical,
//               physics: ScrollPhysics(),
//             itemCount: widget.shoppingCart.length,
//             itemBuilder: (context, index) {
//               ShoppingCartH getShop = widget.shoppingCart[index];
//              return Dismissible(
//                 key: Key(getShop.toString()),
//                 direction: DismissDirection.endToStart,
//                 confirmDismiss: (direction) {
//                   return showDialog(
//                     context: context,
//                     builder: (ctx) =>
//                         AlertDialog(
//                           title: Text('Are you sure?'),
//                           content: Text(
//                               'Do you want to remove the item from the cart?'),
//                           actions: <Widget>[
//                             TextButton(
//                               child: Text('No'),
//                               onPressed: () {
//                                 Navigator.of(ctx).pop(false);
//                               },
//                             ),
//                             TextButton(
//                               child: Text('Yes'),
//                               onPressed: () {
//                                 Navigator.of(ctx).pop(true);
//                               },
//                             ),
//                           ],
//                         ),
//                   );
//                 },
//                 onDismissed: (direction) {
//                   setState(() {
//                     getShop.delete();
//                   });
//                 },
//                 background: Container(
//
//                   padding: EdgeInsets.symmetric(horizontal: 20),
//                   decoration: BoxDecoration(
//                     color: Color(0xFFFFE6E6),
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: Row(
//                     children: [
//                       Spacer(),
//                       SvgPicture.asset("assets/icons/Trash.svg"),
//                     ],
//                   ),
//                 ),
//                 child: CartCard(cart: getShop, index: index),
//
//               );
//             }
//           ),
//         ],
//       ),
//     );
//   }
// }