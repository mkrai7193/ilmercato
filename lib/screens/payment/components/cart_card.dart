//
// // ignore_for_file: deprecated_member_use
//
// import 'package:ilmercato/constants.dart';
// import 'package:ilmercato/screens/cart/model/boxes.dart';
// import 'package:ilmercato/screens/cart/model/shoppingcartH.dart';
// import 'package:flutter/material.dart';
//
// class CartCard extends StatefulWidget {
//
//   const CartCard({
//     Key? key,
//     required this.cart,required this.index,
//   }) : super(key: key);
//
//   final ShoppingCartH cart;
//   final int  index;
//
//
//   @override
//   _CartCardState createState() => _CartCardState();
// }
//
// class _CartCardState extends State<CartCard> {
//   var _controller = TextEditingController();
//
//   int cal(){
//     int total= int.parse(widget.cart.rate.toString()) * int.parse(_controller.text.toString());
//     return total;
//   }
//
//
//   Widget _quantityTextField() {
//     return Container(
//       width: 52,
//       foregroundDecoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10.0),
//
//         border: Border.all(
//           width: 1.0,
//         ),
//       ),
//       child: Row(
//         children: <Widget>[
//           Expanded(
//             flex: 1,
//             child: TextFormField(
//               enabled: false,
//               textAlign: TextAlign.center,
//               style: TextStyle(color: kDarkTextColor),
//               decoration: InputDecoration(
//                 contentPadding: EdgeInsets.all(8.0),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(5.0),
//                 ),
//               ),
//               controller: _controller,
//             ),
//           ),
//           Container(
//             height: 38.0,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Container(
//                   decoration: BoxDecoration(
//                     border: Border(
//                       bottom: BorderSide(
//                         width: 0.5,
//                       ),
//                     ),
//                   ),
//                   child: InkWell(
//                     child: Icon(
//                       Icons.arrow_drop_up,
//                       size: 18.0,
//                       color: kDarkTextColor,
//                     ),
//                     onTap: () {
//
//                       int currentValue = int.parse(_controller.text);
//                       setState(() {
//                         currentValue++;
//                         _controller.text = (currentValue)
//                             .toString();
//                         ShopCartsH().incrementProduct(widget.index);
//                       });
//                     },
//                   ),
//                 ),
//                 InkWell(
//                   child: Icon(
//                     Icons.arrow_drop_down,
//                     size: 18.0,
//                     color: kDarkTextColor,
//                   ),
//                   onTap: () {
//
//                     int currentValue = int.parse(_controller.text);
//                     setState(() {
//                       ShopCartsH().decreaseProduct(widget.index);
//                       currentValue--;
//                       _controller.text =
//                           (currentValue > 0 ? currentValue : 0)
//                               .toString();
//                     });
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     _controller.text = widget.cart.quantity.toString();
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.all(10),
//
//       decoration: BoxDecoration(
//           color: kSecondaryColor,
//
//         borderRadius: BorderRadius.circular(10.0)
//       ),
//       child: Column(
//         children: [
//
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               children: [
//                 //   SizedBox(
//                 //   width: 100,
//                 //   child: AspectRatio(
//                 //     aspectRatio: 0.70,
//                 //     child: Container(
//                 //
//                 //       decoration: BoxDecoration(
//                 //         color: Color(0xFFF5F6F9),
//                 //         borderRadius: BorderRadius.circular(15),
//                 //       ),
//                 //       child: Image.network(widget.cart.proImage),
//                 //     ),
//                 //   ),
//                 // ),
//
//                 Expanded(
//                   flex:2,
//                     child: Image.network(widget.cart.proImage)),
//                 SizedBox(width: 10),
//                 Expanded(
//                   flex:4,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         widget.cart.proName,
//                         style: TextStyle(color: kDarkTextColor,fontWeight: FontWeight.w700, fontSize: 16),
//                         maxLines: 2,
//                       ),
//
//                       // SizedBox(height: 10),
//                       // Text(
//                       //     "₹${widget.cart.rate}",
//                       //     style: TextStyle(color:kTextColor, fontSize: 18),
//                       // ),
//
//                       // SizedBox(height: 10),
//                       // if(widget.cart.pSku !='')
//                       // Text.rich(
//                       //   TextSpan(
//                       //     text: "HUID",
//                       //     style: TextStyle(fontSize: 14, color:kDarkTextColor,fontWeight: FontWeight.w500),
//                       //     children: [
//                       //       TextSpan(
//                       //         text:  " #${widget.cart.pSku}",
//                       //         style: TextStyle(fontSize: 14, color:kTextColor,fontWeight: FontWeight.w600),
//                       //       ),
//                       //     ],
//                       //   ),
//                       // ),
//
//                       if(widget.cart.purity !=0)
//                         SizedBox(height: 10),
//
//                       if(widget.cart.purity !=0)
//                         Text.rich(
//                           TextSpan(
//                             text: "Purity :",
//                             style: TextStyle(fontSize: 14, color:kDarkTextColor,fontWeight: FontWeight.w500),
//                             children: [
//                               TextSpan(
//                                 text:  " ${widget.cart.purity}k",
//                                 style: TextStyle(fontSize: 14, color:kTextColor,fontWeight: FontWeight.w600),
//                               ),
//                             ],
//                           ),
//                         ),
//
//                       if(widget.cart.weight !=0.0)
//                         SizedBox(height: 10),
//
//                       if(widget.cart.weight !=0.0)
//                         Text.rich(
//                           TextSpan(
//                             text: "Gross Weight :",
//                             style: TextStyle(fontSize: 14, color:kDarkTextColor,fontWeight: FontWeight.w500),
//                             children: [
//                               TextSpan(
//                                 text:  " ${widget.cart.weight.toStringAsFixed(3)} gm",
//                                 style: TextStyle(fontSize: 14, color:kTextColor,fontWeight: FontWeight.w600),
//                               ),
//                             ],
//                           ),
//                         ),
//
//
//                       SizedBox(height: 10),
//                       Text.rich(
//                         TextSpan(
//                           text: "Product Value :",
//                           style: TextStyle(fontSize: 14, color:kDarkTextColor,fontWeight: FontWeight.w500),
//                           children: [
//                             TextSpan(
//                               text:  " ₹${widget.cart.rate}",
//                               style: TextStyle(fontSize: 14, color:kTextColor,fontWeight: FontWeight.w600),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//
//
//
//                        Expanded(
//                          flex:1,
//                          child: Column(
//                            crossAxisAlignment: CrossAxisAlignment.end,
//                            children: [
//                              GestureDetector(
//                                  onTap: (){
//                                    showDialog(
//                                      context: context,
//                                      builder: (ctx) =>
//                                          AlertDialog(
//                                            title: Text('Are you sure?'),
//                                            content: Text(
//                                                'Do you want to remove the item from the cart?'),
//                                            actions: <Widget>[
//                                              TextButton(
//                                                child: Text('No'),
//                                                onPressed: () {
//                                                  Navigator.of(ctx).pop(false);
//                                                },
//                                              ),
//                                              TextButton(
//                                                child: Text('Yes'),
//                                                onPressed: () {
//                                                  ShopCartsH().deleteProduct(widget.index);
//                                                  Navigator.of(ctx).pop(true);
//                                                },
//                                              ),
//                                            ],
//                                          ),
//                                    );
//                                  },
//                                   child: Icon(Icons.close,color: kTextColor)
//                              ),
//                            ],
//                          ),
//                        ),
//
//
//                 // _quantityTextField(),
//                 // SizedBox(width: 15),
//                 // Column(
//                 //   children: [
//                 //     Text("₹${cal()}",
//                 //       style: TextStyle(color: Colors.black, fontSize: 14),
//                 //     ),
//                 //   ],
//                 // ),
//                 // SizedBox(width: 15),
//                 // GestureDetector(
//                 //   onTap: (){
//                 //      showDialog(
//                 //       context: context,
//                 //       builder: (ctx) =>
//                 //           AlertDialog(
//                 //             title: Text('Are you sure?'),
//                 //             content: Text(
//                 //                 'Do you want to remove the item from the cart?'),
//                 //             actions: <Widget>[
//                 //               FlatButton(
//                 //                 child: Text('No'),
//                 //                 onPressed: () {
//                 //                   Navigator.of(ctx).pop(false);
//                 //                 },
//                 //               ),
//                 //               FlatButton(
//                 //                 child: Text('Yes'),
//                 //                 onPressed: () {
//                 //                   ShopCarts().deleteProduct(widget.index);
//                 //                   Navigator.of(ctx).pop(true);
//                 //                 },
//                 //               ),
//                 //             ],
//                 //           ),
//                 //     );
//                 //
//                 //   },
//                 //   child:Icon(Icons.delete,color: kAppBarIconColor,)
//                 // )
//               ],
//             ),
//           ),
//           // Container(
//           //   width: MediaQuery.of(context).size.width,
//           //   decoration: BoxDecoration(
//           //     border: Border(
//           //       top: BorderSide(color: kTextColor,width:0.5)
//           //     ),
//           //     color: kTextColor
//           //   ),
//           //   child: Padding(
//           //     padding: const EdgeInsets.only(top:12.0,bottom: 12.0),
//           //     child: GestureDetector(
//           //       onTap: (){
//           //         showDialog(
//           //           context: context,
//           //           builder: (ctx) =>
//           //               AlertDialog(
//           //                 title: Text('Are you sure?'),
//           //                 content: Text(
//           //                     'Do you want to remove the item from the cart?'),
//           //                 actions: <Widget>[
//           //                   FlatButton(
//           //                     child: Text('No'),
//           //                     onPressed: () {
//           //                       Navigator.of(ctx).pop(false);
//           //                     },
//           //                   ),
//           //                   FlatButton(
//           //                     child: Text('Yes'),
//           //                     onPressed: () {
//           //                       ShopCartsH().deleteProduct(widget.index);
//           //                       Navigator.of(ctx).pop(true);
//           //                     },
//           //                   ),
//           //                 ],
//           //               ),
//           //         );
//           //       },
//           //       child: Text("Remove",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
//           //     ),
//           //   ),
//           // )
//         ],
//       ),
//
//
//     );
//   }
// }
