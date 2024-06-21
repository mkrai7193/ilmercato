// import 'package:flutter/material.dart';
// import 'package:ilmercato/Api/LoginApi.dart';
// import 'package:ilmercato/constants.dart';
// import 'package:ilmercato/screens/dashboard/model/OrderDetailModel.dart';
//
// import 'components/OrderDetailReport.dart';
//
//
// class OrderDetail extends StatefulWidget {
//  final String orderNo;
//
//   const OrderDetail({Key? key,required this.orderNo}) : super(key: key);
//
//   @override
//   State<OrderDetail> createState() => _OrderDetailState();
// }
//
// class _OrderDetailState extends State<OrderDetail> {
//   @override
//   Widget build(BuildContext context) {
//    print(widget.orderNo);
//     return Scaffold(
//       appBar: AppBar(
//         iconTheme: IconThemeData(color:kAppBarIconColor,opacity: 1),
//         backgroundColor:kAppBarColor,
//         title: Text("Proforma Invoice",style: TextStyle(color: kTextColor),),
//       ),
//       body: FutureBuilder<OrderDetailModel>(
//         future: LoginApi.orderDetailApi({"order_no":"${widget.orderNo.toString()}"}),
//         builder: (context, snapshot) {
//           // Checking if future is resolved or not
//           if (snapshot.connectionState == ConnectionState.done) {
//             if (snapshot.hasData) {
//               if (snapshot.data!.status == "200") {
//                 //  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${snapshot.data!.message.toString()}")));
//
//                 return OrderDetailReport(order:snapshot.data!.data!.records![0],product: snapshot.data!.products!);
//               }
//             } else if (snapshot.hasError) {
//               return Container(
//                   alignment: AlignmentDirectional.center,
//                   child: Text("Technical Issue! Please Try Again"));
//             }
//           }
//           return Container(
//               alignment: AlignmentDirectional.center,
//               child: const CircularProgressIndicator.adaptive());
//         },
//       ),
//     );
//   }
// }
//
