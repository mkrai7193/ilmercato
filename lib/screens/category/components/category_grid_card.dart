// import 'package:flutter/material.dart';
// import 'package:ilmercato/screens/category/category_screen.dart';
// import 'package:ilmercato/screens/product/product_screen.dart';
//
//
// class CategoryGridCard extends StatelessWidget {
//   const CategoryGridCard({
//     Key? key,
//     // this.width = 140,
//     // this.aspectRetio = 1,
//     required this.category,
//   }) : super(key: key);
//
//   // final double width,aspectRetio;
//   final Records category;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: GestureDetector(
//         onTap: () {
//           if (category.catparent == "1") {
//             Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => CategoryScreen(
//                         parent: int.parse(category.catid.toString()),
//                         cname: "${category.catname}")));
//           } else {
//             Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => ProductScreen(
//                         parent: category.catid.toString(),
//                        )));
//           }
//         },
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             AspectRatio(
//               aspectRatio: .66,
//               child: Image.network(
//                 "${category.catimage}",
//                 loadingBuilder: (_, child, loadingProgress) =>
//                     loadingProgress == null
//                         ? child
//                         : const Center(child: CircularProgressIndicator()),
//               ),
//             ),
//             /*  Container(
//               decoration: BoxDecoration(
//                 color: kAppBarIconColor,
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.only(top:8.0,bottom: 8.0,right: 2.0,left: 2.0),
//                 child: Center(
//                   child: Text(
//                     "${category.catname}",
//                     maxLines: 1,
//                     style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.white
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//            */
//           ],
//         ),
//       ),
//     );
//   }
// }
