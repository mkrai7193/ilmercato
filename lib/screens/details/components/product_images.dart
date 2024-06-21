// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:ilmercato/screens/product/model/ProductsModel.dart';
// import 'package:ilmercato/widget/whatsapp_widget.dart';
// import '../../../constants.dart';
// import 'package:flutter_share_me/flutter_share_me.dart';
//
// enum Share { share_system }
//
// class ProductImages extends StatefulWidget {
//   const ProductImages({
//     Key? key,
//     required this.product,
//   }) : super(key: key);
//
//   final ProductsModel product;
//
//   @override
//   _ProductImagesState createState() => _ProductImagesState();
// }
//
// class _ProductImagesState extends State<ProductImages> {
//   int wishlist = 0;
//   int selectedImage = 1;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Stack(
//           children: [
//             if (selectedImage == 1)
//               SizedBox(
//                 width: double.infinity,
//                 child: AspectRatio(
//                   aspectRatio: 0.75,
//                   child: Hero(
//                     tag: widget.product.images![0].src.toString(),
//                     child: Image.network(
//                       "${widget.product.images![0].src}",
//                       fit: BoxFit.fitHeight,
//                     ),
//                   ),
//                 ),
//               ),
//             if (selectedImage == 2)
//               SizedBox(
//                 width: double.infinity,
//                 child: AspectRatio(
//                   aspectRatio: 0.60,
//                   child: Hero(
//                     tag: widget.product.images![1].src.toString(),
//                     child: Image.network(
//                       "${widget.product.images![1].src}",
//                       fit: BoxFit.fitHeight,
//                     ),
//                   ),
//                 ),
//               ),
//             if (selectedImage == 3)
//               SizedBox(
//                 width: double.infinity,
//                 child: AspectRatio(
//                   aspectRatio: 0.60,
//                   child: Hero(
//                     tag: widget.product.images![2].src.toString(),
//                     child: Image.network(
//                       "${widget.product.images![2].src}",
//                       fit: BoxFit.fitHeight,
//                     ),
//                   ),
//                 ),
//               ),
//             new Positioned(
//               left: 10.0,
//               top: 10.0,
//               child: Container(
//                   height: 35,
//                   width: 35,
//                   decoration: BoxDecoration(
//                     border: Border.all(color: kAppBarIconColor),
//                     borderRadius: BorderRadius.all(Radius.circular(30)),
//                     color: Colors.white,
//                   ),
//                   child: IconButton(
//                       onPressed: () {
//                         setState(() {
//                           (wishlist != 0) ? wishlist = 0 : wishlist = 1;
//                         });
//                       },
//                       icon: (wishlist == 0)
//                           ? SvgPicture.asset(
//                               "assets/icons/Heart Icon.svg",
//                               color: kAppBarIconColor,
//                             )
//                           : SvgPicture.asset(
//                               "assets/icons/Heart Icon_2.svg",
//                               color: kAppBarIconColor,
//                             ))),
//             ),
//             // new Positioned(
//             //   right: 5.0,
//             //   top: 0.0,
//             //   child: Container(
//             //       child: IconButton(
//             //           onPressed: () {
//             //             onButtonTap(
//             //                 Share.share_system, "${widget.product.shareCode}");
//             //           },
//             //           icon: Icon(
//             //             Icons.share,
//             //             color: kAppBarIconColor,
//             //           ))),
//             // ),
//
//             // new Positioned(
//             //   left: 6.0,
//             //   top: 6.0,
//             //   child: Container(
//             //       decoration: BoxDecoration(
//             //         border: Border.all(color: kAppBarIconColor),
//             //         borderRadius: BorderRadius.all(Radius.circular(10)),
//             //         color: Colors.white,
//             //       ),
//             //       child: GestureDetector(
//             //         onTap: ()=>onButtonTap(Share.share_system,"${widget.product.sharecode}"),
//             //         child: Padding(
//             //           padding: const EdgeInsets.all(10.0),
//             //           child: Row(
//             //             children: [
//             //              Icon(Icons.share,size:30,color:kDarkTextColor),
//             //               // Text(
//             //               //   "",
//             //               //   style: TextStyle(
//             //               //     fontSize: 12,
//             //               //     fontWeight: FontWeight.bold,
//             //               //     color: kTextColor,
//             //               //   ),
//             //               // ),
//             //             ],
//             //           ),
//             //         ),
//             //       )),
//             // ),
//           ],
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             if (widget.product.images![1].src != kPhotoLink &&
//                 widget.product.images![2].src != kPhotoLink)
//               ...List.generate(1, (index) => buildSmallProductPreview(1)),
//             if (widget.product.images![1].src != kPhotoLink)
//               ...List.generate(1, (index) => buildSmallProductPreview1(2)),
//             if (widget.product.images![2].src != kPhotoLink)
//               ...List.generate(1, (index) => buildSmallProductPreview2(3)),
//           ],
//         ),
//       ],
//     );
//   }
//
//   GestureDetector buildSmallProductPreview(int index) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           selectedImage = index;
//         });
//       },
//       child: AnimatedContainer(
//         duration: defaultDuration,
//         margin: EdgeInsets.only(right: 15, top: 10),
//         height: 48,
//         width: 48,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(10),
//           border: Border.all(
//               color: kPrimaryColor.withOpacity(selectedImage == index ? 1 : 0)),
//         ),
//         child: Image.network("${widget.product.images![0].src}"),
//       ),
//     );
//   }
//
//   GestureDetector buildSmallProductPreview1(int index) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           selectedImage = index;
//         });
//       },
//       child: AnimatedContainer(
//         duration: defaultDuration,
//         margin: EdgeInsets.only(right: 15, top: 10),
//         height: 48,
//         width: 48,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           border: Border.all(
//               color: kPrimaryColor.withOpacity(selectedImage == index ? 1 : 0)),
//         ),
//         child: Image.network("${widget.product.images![1].src}"),
//       ),
//     );
//   }
//
//   GestureDetector buildSmallProductPreview2(int index) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           selectedImage = index;
//         });
//       },
//       child: AnimatedContainer(
//         duration: defaultDuration,
//         margin: EdgeInsets.only(right: 15, top: 10),
//         height: 48,
//         width: 48,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           border: Border.all(
//               color: kPrimaryColor.withOpacity(selectedImage == index ? 1 : 0)),
//         ),
//         child: Image.network("${widget.product.images![2].src}"),
//       ),
//     );
//   }
//
//   Future<void> onButtonTap(Share share, var url1) async {
//     String url = url1;
//
//     String? response;
//     final FlutterShareMe flutterShareMe = FlutterShareMe();
//     switch (share) {
//       case Share.share_system:
//         response = await flutterShareMe.shareToSystem(msg: url);
//         break;
//     }
//     debugPrint(response);
//   }
// }
