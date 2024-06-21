// import 'package:flutter/material.dart';
// import 'package:ilmercato/Api/LoginApi.dart';
// import 'package:ilmercato/constants.dart';
// import 'package:ilmercato/main.dart';
// import 'package:ilmercato/models/categoriesModel.dart';
// import 'package:ilmercato/screens/category/category_screen.dart';
//
// class MainCategoryName extends StatefulWidget {
//
//   @override
//   _MainCategoryNameState createState() => _MainCategoryNameState();
// }
//
// class _MainCategoryNameState extends State<MainCategoryName> {
//
//   int parent =0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder<CategoriesModel>(
//         future: LoginApi.categoriesApi(),
//         builder: (context, snapshot) {
//           // Checking if future is resolved or not
//           if (snapshot.connectionState == ConnectionState.done) {
//             if (snapshot.hasData) {
//               return ListView.builder(
//                   shrinkWrap: true,
//                   scrollDirection: Axis.horizontal,
//                   itemCount: snapshot.data!.data!.records!.length,
//                   itemBuilder: (context, int index) {
//                     return getCategoryName(snapshot.data!.data!.records![index]);
//                   });
//             } else if (snapshot.hasError) {
//               return Container(
//                   alignment:AlignmentDirectional.center,
//                   child: Text("Technical Issue! Please Try Again"));
//             }
//           }
//           return Container(
//               alignment:AlignmentDirectional.center,
//               child: const CircularProgressIndicator.adaptive());
//         },
//       ),
//    );
//   }
//   Widget getCategoryName(Records records) {
//
//     final cName = Align(
//       alignment: Alignment.topCenter,
//       child: Text(
//         "${records.catname}",
//         style: listText,
//       ),
//     );
//
//     return Container(
//       child: Padding(
//         padding: const EdgeInsets.only(top: kDefaultPadding8,left: kDefaultPadding8,right: kDefaultPadding8),
//         child: TextButton(
//             style: ButtonStyle(
//                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                     RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(16.0),
//                         side: BorderSide(color: kDarkTextColor)
//                     )
//                 )
//             ),
//           onPressed: (){
//             Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryScreen(parent: int.parse(records.catid.toString()),cname: "${records.catname}")));
//           },
//           child: Column(
//             children: <Widget>[cName],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
