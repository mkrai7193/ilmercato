// import 'package:flutter/material.dart';
// import 'package:ilmercato/Api/LoginApi.dart';
// import 'package:ilmercato/models/productModel.dart';
// import 'package:ilmercato/screens/home/components/section_title.dart';
// import 'package:ilmercato/widget/ProductListCard.dart';
//
// class SimilarProducts extends StatefulWidget {
//   final String pid;
//
//   const SimilarProducts({Key? key, required this.pid}) : super(key: key);
//   @override
//   _SimilarProductsState createState() => _SimilarProductsState();
// }
//
// class _SimilarProductsState extends State<SimilarProducts> {
//   @override
//   Widget build(BuildContext context) {
//     print(widget.pid);
//     return Column(
//       children: [
//         Padding(
//           padding: EdgeInsets.symmetric(horizontal: 10),
//           child: SectionTitle(title: "Similar Product", press: () {}),
//         ),
//         SizedBox(height: 10),
//         FutureBuilder<ProductModel>(
//             future: LoginApi.similarProductApi(
//                 {"dealer_id": '1', "p_id": widget.pid}),
//             builder: (context, snapshot) {
//               // Checking if future is resolved or not
//               if (snapshot.connectionState == ConnectionState.done) {
//                 if (snapshot.hasData) {
//                   return SizedBox(
//                     height: 330,
//                     child: ListView.separated(
//                         padding: const EdgeInsets.symmetric(horizontal: 10),
//                         scrollDirection: Axis.horizontal,
//                         itemCount: snapshot.data!.data!.records!.length,
//                         separatorBuilder: (_, index) => const SizedBox(
//                               width: 10,
//                             ),
//                         itemBuilder: (context, int index) {
//                           return ProductListCard(
//                               product: snapshot.data!.data!.records![index]);
//                         }),
//                   );
//                 } else if (snapshot.hasError) {
//                   return Container(
//                       alignment: AlignmentDirectional.center,
//                       child: Text("Technical Issue! Please Try Again"));
//                 }
//               }
//               return Container(
//                   alignment: AlignmentDirectional.center,
//                   child: const CircularProgressIndicator.adaptive());
//             })
//       ],
//     );
//   }
// }
