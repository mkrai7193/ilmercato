import 'package:flutter/material.dart';
import 'package:ilmercato/Api/LoginApi.dart';
import 'package:ilmercato/constants.dart';
import 'package:ilmercato/screens/dashboard/model/OrderDetailModel.dart';
import 'package:ilmercato/screens/order/model/OrderModel.dart';

import 'OrderDetailReport.dart';

class OrderListDetail extends StatelessWidget {
  final String orderNo;
  const OrderListDetail({Key? key,required this.orderNo}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: kTextColor),
        foregroundColor: kTextColor,
        title: Text("Order No. ${orderNo.toString()}", style: TextStyle(color: Colors.white),),
      ),
      body: FutureBuilder<OrderDetailModel>(
        future: LoginApi.myOrdersDetailApi(orderNo),
        builder: (context, snapshot) {

          // Checking if future is resolved or not
          if (snapshot.connectionState == ConnectionState.done) {
            print("hh ${snapshot.data!.id.toString()}");
            if (snapshot.hasData) {

              return OrderDetailReport(order:snapshot.data!);

              // return ListView.builder(
              //     scrollDirection: Axis.vertical,
              //     shrinkWrap: true,
              //     physics: ScrollPhysics(),
              //     itemCount: snapshot.data,
              //     itemBuilder: (BuildContext context,int index) {
              //
               //   });

            } else if (snapshot.hasError) {
              return Container(
                  alignment: AlignmentDirectional.center,
                  child: Text("Technical Issue! Please Try Again"));
            }
          }
          return Container(
              alignment: AlignmentDirectional.center,
              child: const CircularProgressIndicator.adaptive());
        },
      ),
    );
  }
}
