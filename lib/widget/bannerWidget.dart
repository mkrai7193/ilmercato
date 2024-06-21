// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:ilmercato/Api/LoginApi.dart';
// import 'package:ilmercato/models/BannerModel.dart';
// import 'package:flutter/material.dart';
//
// class MainBanner extends StatefulWidget {
//   @override
//   _MainBannerState createState() => _MainBannerState();
// }
//
// class _MainBannerState extends State<MainBanner> {
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<dynamic>(
//         future: bannerApi(),
//         builder: (context, snapshot) {
//           // Checking if future is resolved or not
//           if (snapshot.connectionState == ConnectionState.done) {
//             if (snapshot.hasData) {
//               return Builder(
//                 builder: (context) {
//                   final double width = MediaQuery.of(context).size.width;
//                   return CarouselSlider(
//                     options: CarouselOptions(
//                       viewportFraction: 1.00,
//                       enlargeCenterPage: false,
//                       autoPlay: true,
//                     ),
//                     items: imgList
//                         .map((item) => Container(
//                               width: width,
//                               child: Image.network(item, fit: BoxFit.fitWidth),
//                             ))
//                         .toList(),
//                   );
//                 },
//               );
//             } else if (snapshot.hasError) {
//               return Container(
//                   alignment: AlignmentDirectional.center,
//                   child: Text("Technical Issue! Please Try Again"));
//             }
//           }
//           return Container(
//               alignment: AlignmentDirectional.center,
//               child: const CircularProgressIndicator.adaptive());
//         });
//   }
//
//   List<String> imgList = [];
//
//   Future<dynamic> bannerApi() async {
//     try {
//       var res = await LoginApi.bannerApi({"type": "Main_Banner"});
//       var length = res.data!.records!.length;
//
//       for (var ia = 0; ia < length; ia++) {
//         var bImage = res.data!.records![ia].bImage;
//         imgList.add(bImage!);
//       }
//       return imgList;
//     } catch (e) {
//       throw (e);
//     }
//   }
// }
//
// class CategoryBanner extends StatefulWidget {
//   @override
//   _CategoryBannerState createState() => _CategoryBannerState();
// }
//
// class _CategoryBannerState extends State<CategoryBanner> {
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<dynamic>(
//         future: bannerApi(),
//         builder: (context, snapshot) {
//           // Checking if future is resolved or not
//           if (snapshot.connectionState == ConnectionState.done) {
//             if (snapshot.hasData) {
//               return Builder(
//                 builder: (context) {
//                   return CarouselSlider(
//                     options: CarouselOptions(
//                       viewportFraction: 1.00,
//                       enlargeCenterPage: false,
//                       autoPlay: true,
//                     ),
//                     items: imgList
//                         .map((item) => Container(
//                               child: Center(
//                                   child:
//                                       Image.network(item, fit: BoxFit.cover)),
//                             ))
//                         .toList(),
//                   );
//                 },
//               );
//             } else if (snapshot.hasError) {
//               return Container(
//                   alignment: AlignmentDirectional.center,
//                   child: Text("Technical Issue! Please Try Again"));
//             }
//           }
//           return Container(
//               alignment: AlignmentDirectional.center,
//               child: const CircularProgressIndicator.adaptive());
//         });
//   }
//
//   List<String> imgList = [];
//
//   Future<dynamic> bannerApi() async {
//     try {
//       var res = await LoginApi.bannerApi({"type": "Category_Banner"});
//       var length = res.data!.records!.length;
//
//       for (var ia = 0; ia < length; ia++) {
//         var bImage = res.data!.records![ia].bImage;
//         imgList.add(bImage!);
//       }
//       return imgList;
//     } catch (e) {
//       throw (e);
//     }
//   }
// }
//
// class TryOnBanner extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 200,
//       child: FutureBuilder<BannerModel>(
//           future: LoginApi.bannerApi({"type": "Try_On"}),
//           builder: (context, snapshot) {
//             // Checking if future is resolved or not
//             if (snapshot.connectionState == ConnectionState.done) {
//               if (snapshot.hasData) {
//                 return Ink.image(
//                     image: NetworkImage(
//                         "${snapshot.data!.data!.records![0].bImage}"),
//                     fit: BoxFit.cover);
//               } else if (snapshot.hasError) {
//                 return Container(
//                     alignment: AlignmentDirectional.center,
//                     child: Text("Technical Issue! Please Try Again"));
//               }
//             }
//             return Container(
//                 alignment: AlignmentDirectional.center,
//                 child: const CircularProgressIndicator.adaptive());
//           }),
//     );
//   }
// }
//
// class SecondBanner extends StatefulWidget {
//   @override
//   _SecondBannerState createState() => _SecondBannerState();
// }
//
// class _SecondBannerState extends State<SecondBanner> {
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<dynamic>(
//         future: bannerApi(),
//         builder: (context, snapshot) {
//           // Checking if future is resolved or not
//           if (snapshot.connectionState == ConnectionState.done) {
//             if (snapshot.hasData) {
//               return Builder(
//                 builder: (context) {
//                   return CarouselSlider(
//                     options: CarouselOptions(
//                       viewportFraction: 1.00,
//                       enlargeCenterPage: false,
//                       autoPlay: true,
//                     ),
//                     items: imgList
//                         .map((item) => Container(
//                               child: Center(
//                                   child:
//                                       Image.network(item, fit: BoxFit.cover)),
//                             ))
//                         .toList(),
//                   );
//                 },
//               );
//             } else if (snapshot.hasError) {
//               return Container(
//                   alignment: AlignmentDirectional.center,
//                   child: Text("Technical Issue! Please Try Again"));
//             }
//           }
//           return Container(
//               alignment: AlignmentDirectional.center,
//               child: const CircularProgressIndicator.adaptive());
//         });
//   }
//
//   List<String> imgList = [];
//
//   Future<dynamic> bannerApi() async {
//     try {
//       var res = await LoginApi.bannerApi({"type": "Second_Banner"});
//       var length = res.data!.records!.length;
//
//       for (var ia = 0; ia < length; ia++) {
//         var bImage = res.data!.records![ia].bImage;
//         imgList.add(bImage!);
//       }
//       return imgList;
//     } catch (e) {
//       throw (e);
//     }
//   }
// }
//
// class OfferBanner extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 200,
//       child: FutureBuilder<BannerModel>(
//           future: LoginApi.bannerApi({"type": "Offer_Banner"}),
//           builder: (context, snapshot) {
//             // Checking if future is resolved or not
//             if (snapshot.connectionState == ConnectionState.done) {
//               if (snapshot.hasData) {
//                 return Ink.image(
//                     image: NetworkImage(
//                         "${snapshot.data!.data!.records![0].bImage}"),
//                     fit: BoxFit.cover);
//               } else if (snapshot.hasError) {
//                 return Container(
//                     alignment: AlignmentDirectional.center,
//                     child: Text("Technical Issue! Please Try Again"));
//               }
//             }
//             return Container(
//                 alignment: AlignmentDirectional.center,
//                 child: const CircularProgressIndicator.adaptive());
//           }),
//     );
//   }
// }
