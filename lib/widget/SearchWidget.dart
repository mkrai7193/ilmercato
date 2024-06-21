// import 'package:flutter/material.dart';
// import 'package:ilmercato/Api/LoginApi.dart';
// import 'package:ilmercato/constants.dart';
// import 'package:ilmercato/models/SearchModel.dart';
// import 'package:hive_flutter/hive_flutter.dart';
// import 'package:ilmercato/screens/cart/model/boxes.dart';
// import 'package:ilmercato/screens/cart/model/shoppingcartH.dart';
// import 'package:ilmercato/screens/details/details_screen.dart';
// import 'package:ilmercato/widget/whatsapp_widget.dart';
//
// class DataSearch extends SearchDelegate<String> {
//   final List<String> recentCities;
//
//   // final cities = [
//   //   'Gold',
//   // ];
//
//   DataSearch(this.recentCities);
//
//   @override
//   List<Widget> buildActions(BuildContext context) {
//     return [
//       IconButton(
//         tooltip: 'Clear',
//         icon: const Icon(Icons.clear),
//         onPressed: () {
//           query = '';
//           showSuggestions(context);
//         },
//       )
//     ];
//
//     // return <Widget>[
//     //   query.isNotEmpty ?
//     //   IconButton(
//     //     tooltip: 'Clear',
//     //     icon: const Icon(Icons.clear),
//     //     onPressed: () {
//     //       query = '';
//     //       showSuggestions(context);
//     //     },
//     //   ) : IconButton(
//     //     icon: const Icon(Icons.mic),
//     //     tooltip: 'Voice input',
//     //     onPressed: () {
//     //       this.query = 'TBW: Get input from voice';
//     //     },
//     //
//     //   ),
//     // ];
//   }
//
//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(
//       tooltip: 'Back',
//       icon: AnimatedIcon(
//         icon: AnimatedIcons.menu_arrow,
//         progress: transitionAnimation,
//       ),
//       onPressed: () {
//         //Take control back to previous page
//         this.close(context, "");
//       },
//     );
//   }
//
//   @override
//   Widget buildResults(BuildContext context) {
//     return ValueListenableBuilder<Box<ShoppingCartH>>(
//         valueListenable: ShopCartsH.getShoppingDetail().listenable(),
//         builder: (context, box, _) {
//           return Scaffold(
//             backgroundColor: kBackgroundColor,
//             body: FutureBuilder<SearchModel>(
//                 future: LoginApi.searchApi(
//                     {"dealer_id": '1', "searchfor": "${query.toString()}"}),
//                 builder: (context, snapshot) {
//                   if (snapshot.connectionState == ConnectionState.done) {
//                     if (snapshot.hasData) {
//                       if (snapshot.data!.data!.records!.length == 0) {
//                         return Center(child: Text("No Data Found"));
//                       } else {
//                         return Padding(
//                           padding: const EdgeInsets.all(10.0),
//                           child: GridView.builder(
//                               itemCount: snapshot.data!.data!.records!.length,
//                               gridDelegate:
//                                   SliverGridDelegateWithMaxCrossAxisExtent(
//                                       maxCrossAxisExtent: 250,
//                                       crossAxisSpacing: 10,
//                                       mainAxisSpacing: 10,
//                                       childAspectRatio: .51),
//                               itemBuilder: (BuildContext context, index) {
//                                 var product =
//                                     snapshot.data!.data!.records![index];
//                                 // return ProductGridCard(
//                                 //     product:product );
//                                 return Container(
//                                   decoration: BoxDecoration(
//                                       color: kSecondaryColor,
//                                       borderRadius: BorderRadius.circular(20.0),
//                                       border: Border.all(
//                                           width: 1,
//                                           color:
//                                               kDarkTextColor.withOpacity(0.2))),
//                                   child: GestureDetector(
//                                     onTap: () {
//                                       Navigator.push(
//                                           context,
//                                           MaterialPageRoute(
//                                               builder: (context) =>
//                                                   ProductDetailsScreen(
//                                                     pid: "${product.pid}",
//
//                                                   )));
//                                     },
//                                     child: Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Stack(children: <Widget>[
//                                           AspectRatio(
//                                             aspectRatio: .71,
//                                             child: Container(
//                                               decoration: BoxDecoration(
//                                                 color: Colors.white,
//                                                 borderRadius:
//                                                     BorderRadius.circular(20),
//                                               ),
//                                               clipBehavior: Clip.hardEdge,
//                                               child: Image.network(
//                                                 "${product.pImg}",
//                                                 loadingBuilder: (_, child,
//                                                         loadingProgress) =>
//                                                     loadingProgress == null
//                                                         ? child
//                                                         : const Center(
//                                                             child:
//                                                                 CircularProgressIndicator()),
//                                               ),
//                                             ),
//                                           ),
//                                           new Positioned(
//                                             right: 10.0,
//                                             top: 10.0,
//                                             child: Container(
//                                                 height: 35,
//                                                 width: 35,
//                                                 decoration: BoxDecoration(
//                                                   border: Border.all(
//                                                       color: kAppBarIconColor),
//                                                   borderRadius:
//                                                       BorderRadius.all(
//                                                           Radius.circular(30)),
//                                                   color: Colors.white,
//                                                 ),
//                                                 child: IconButton(
//                                                     onPressed: () {
//                                                       var msg =
//                                                           "Product Image -> ${product.pImg} \n Product SKU -> ${product.psku} \n Product Name -> ${product.pName.toString()}";
//                                                       openProductWhatApp(
//                                                           msg, context);
//                                                     },
//                                                     icon: Image.asset(
//                                                       "assets/icons/Chat bubble Icon.svg",
//                                                       color: kAppBarIconColor,
//                                                     ))),
//                                           ),
//                                         ]),
//                                         Container(
//                                           width: MediaQuery.of(context)
//                                                   .size
//                                                   .width *
//                                               1,
//                                           decoration: BoxDecoration(
//                                             color: kPrimaryLightColor,
//                                           ),
//                                           child: Padding(
//                                             padding: const EdgeInsets.symmetric(
//                                                 horizontal: 12.0,
//                                                 vertical: 0.0),
//                                             child: Center(
//                                               child: Text(
//                                                 "${product.pName}",
//                                                 maxLines: 1,
//                                                 style: TextStyle(
//                                                   fontSize: 18,
//                                                   color: kDarkTextColor,
//                                                   fontWeight: FontWeight.w600,
//                                                   height: 1,
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                         Container(
//                                           width: MediaQuery.of(context)
//                                                   .size
//                                                   .width *
//                                               1,
//                                           decoration: BoxDecoration(
//                                             color: kPrimaryLightColor,
//                                           ),
//                                           child: Padding(
//                                             padding: const EdgeInsets.symmetric(
//                                                 horizontal: 12.0,
//                                                 vertical: 2.0),
//                                             child: Center(
//                                               child: Text(
//                                                 "${product.psku}",
//                                                 maxLines: 1,
//                                                 style: largeListText,
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding: const EdgeInsets.symmetric(
//                                               horizontal: 12.0, vertical: 0.0),
//                                           child: Row(
//                                             children: [
//                                               Text(
//                                                 "GWT",
//                                                 style: smallListText,
//                                               ),
//                                               Spacer(),
//                                               Text(
//                                                 "DWT",
//                                                 style: smallListText,
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding: const EdgeInsets.symmetric(
//                                               horizontal: 12.0, vertical: 0.0),
//                                           child: Row(
//                                             children: [
//                                               Text(
//                                                 "${product.pGoldWt} gm",
//                                                 style: largeListText,
//                                               ),
//                                               Spacer(),
//                                               Text(
//                                                 "${product.pDiamondWt} ct",
//                                                 style: largeListText,
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 );
//                               }),
//                         );
//                       }
//                     } else if (snapshot.hasError) {
//                       return Container(
//                           alignment: AlignmentDirectional.center,
//                           child: Text("Technical Issue! Please Try Again"));
//                     }
//                   }
//                   return Container(
//                       alignment: AlignmentDirectional.center,
//                       child: const CircularProgressIndicator.adaptive());
//                 }),
//           );
//         });
//   }
//
//   @override
//   Widget buildSuggestions(BuildContext context) {
//     var suggestions = query.isEmpty
//         ? recentCities
//         : recentCities
//             .where((p) =>
//                 p.toLowerCase().contains(query.toLowerCase()) ||
//                 p.startsWith(query.toLowerCase()))
//             .toList();
//
//     return _WordSuggestionList(
//       query: this.query,
//       suggestions: suggestions,
//       onSelected: (String suggestion) {
//         this.query = suggestion;
//         this.recentCities.insert(0, suggestion);
//         showResults(context);
//       },
//     );
//   }
// }
//
// // Suggestions list widget displayed in the search page.
// class _WordSuggestionList extends StatelessWidget {
//   const _WordSuggestionList(
//       {required this.suggestions,
//       required this.query,
//       required this.onSelected});
//
//   final List<String> suggestions;
//   final String query;
//   final ValueChanged<String> onSelected;
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: suggestions.length,
//       itemBuilder: (BuildContext context, int i) {
//         final String suggestion = suggestions[i];
//         return ListTile(
//           leading: query.isEmpty
//               ? Icon(
//                   Icons.adjust,
//                   color: kAppBarIconColor,
//                 )
//               : Icon(
//                   Icons.adjust,
//                   color: kAppBarIconColor,
//                 ),
//           // Highlight the substring that matched the query.
//
//           title: RichText(
//               text: TextSpan(
//                   text: suggestion.substring(0, query.length),
//                   style: TextStyle(
//                       color: kDarkTextColor, fontWeight: FontWeight.bold),
//                   children: [
//                 TextSpan(
//                     text: suggestion.substring(query.length),
//                     style: TextStyle(color: kDarkTextColor))
//               ])),
//
//           onTap: () {
//             onSelected(suggestion);
//           },
//         );
//       },
//     );
//   }
// }
