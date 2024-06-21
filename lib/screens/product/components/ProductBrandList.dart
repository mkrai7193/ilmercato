// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:ilmercato/Api/LoginApi.dart';
// import 'package:ilmercato/components/default_button.dart';
// import 'package:ilmercato/screens/cart/model/boxes.dart';
// import 'package:ilmercato/screens/details/details_screen.dart';
// import 'package:ilmercato/screens/product/model/NewProductCategoryModel.dart';
// import '../../../constants.dart';
//
//
// class ProductBrandList extends StatefulWidget {
//   final String cid;
//   final String brand;
//   const ProductBrandList({super.key, required this.cid, required this.brand});
//
//   @override
//   State<ProductBrandList> createState() => _ProductBrandListState();
// }
//
// class _ProductBrandListState extends State<ProductBrandList> {
//
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<NewProductCategoryModel>(
//       future:LoginApi.GetProductCategoryBrandApi({"cid":widget.cid,"brand":widget.brand}),
//       builder: (context, snapshot) {
//         // Checking if future is resolved or not
//         if (snapshot.connectionState == ConnectionState.done) {
//           if (snapshot.hasData) {
//             return ListView.builder(
//                 shrinkWrap: true,
//                 scrollDirection: Axis.vertical,
//                 itemCount: snapshot.data!.data!.records!.length,
//                 itemBuilder: (context, int index) {
//                   return getPrntCat1(snapshot.data!.data!.records![index], index);
//                 });
//           } else if (snapshot.hasError) {
//             return Container(
//                 alignment:AlignmentDirectional.center,
//                 child: Text("Technical Issue! Please Try Again"));
//           }
//         }
//         return Container(
//             alignment:AlignmentDirectional.center,
//             child: const CircularProgressIndicator.adaptive());
//       },
//     );
//   }
//
//   Widget getPrntCat1(Records product,int index) {
//     double price;
//     if(product.saleprice ==''){
//       price = double.parse(product.regularprice!.toStringAsFixed(3));
//     }else{
//       price = double.parse(product.saleprice!.toStringAsFixed(3));
//     }
//
//     /* Start Product Design */
//     return Container(
//       height: 200,
//       decoration: BoxDecoration(
//         color: (index % 2 == 0) ? kBackgroundColor : kBackground2Color,
//       ),
//       child: Padding(
//         padding: const EdgeInsets.only(top: 30,bottom: 30),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 10,right: 10),
//               child: GestureDetector(
//                 onTap: (){
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => ProductDetailsScreen(
//                             pid: product.id.toString(),
//                           )));
//                 },
//                 child: Container(
//                   color: kSecondaryColor,
//                   child: AspectRatio(
//                     aspectRatio: 1,
//                     child: Image.network(
//                       "${product.images!.toString()}",
//                       loadingBuilder: (_, child, loadingProgress) =>
//                       loadingProgress == null
//                           ? child
//                           : const Center(child: CircularProgressIndicator()),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//
//             Container(
//               width: MediaQuery.of(context).size.width*0.55,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   GestureDetector(
//                       onTap: (){
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => ProductDetailsScreen(
//                                   pid: product.id.toString(),
//                                 )));
//                       },
//                       child: Text("${product.pname}",maxLines:3,style: TextStyle(
//                         fontSize: 15,
//                         color: kTextColor,
//                         fontWeight: FontWeight.w600,
//
//                         height: 1.5,
//                       ),)),
//                   //if(product.description !='')
//                   // Html(
//                   //   data: "${product.description}".substring(0, 160)+'..',
//                   //   style: {
//                   //     '#': Style(
//                   //         fontSize: FontSize(14),
//                   //         maxLines: 1,
//                   //         textOverflow: TextOverflow.ellipsis,
//                   //         textAlign: TextAlign.left,
//                   //         alignment: Alignment.topLeft
//                   //     ),
//                   //   },
//                   // ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       (product.saleprice.toString() !="")?
//                       Container(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text("BD ${double.parse('${product.regularprice!.toStringAsFixed(3)}')}", maxLines: 1, style:TextStyle(decoration: TextDecoration.lineThrough,fontSize: 16),),
//                               Text("BD ${double.parse('${product.saleprice!.toStringAsFixed(3)}')}", maxLines: 1, style: headingRate,),
//
//                             ],
//                           )
//                       ): Text("BD ${double.parse('${product.regularprice!.toStringAsFixed(3)}')}", maxLines: 1, style: headingRate,),
//
//                       Container(
//                         child: SmallDefaultButton(
//                           text: "ADD +",
//                           press: (){
//
//                             ShopCartsH().addToBag(
//                                 1,
//                                 "${product.sku}",
//                                 int.parse(product.id.toString()),
//                                 "${product.pname}",
//                                 "${product.images.toString()}",
//                                 price,
//                                 1,
//                                 "${product.brand}",
//                                 "0");
//
//                             Fluttertoast.showToast(msg: "${product.pname} is added Successfully in Cart");
//                           },
//                         ),
//                       )
//
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//     /* End Product Design */
//   }
// }
