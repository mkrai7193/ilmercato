import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:external_app_launcher/external_app_launcher.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:ilmercato/Api/ApiHelper.dart';
import 'package:ilmercato/Api/ServerConstants.dart';
import 'package:ilmercato/constants.dart';
import 'package:ilmercato/navigationDrawer.dart';
import 'package:ilmercato/screens/cart/model/boxes.dart';
import 'package:ilmercato/screens/checkout/model/deliveryModel.dart';
import 'package:ilmercato/screens/order/order_screen.dart';
import 'package:ilmercato/screens/order/order_screenGate.dart';
import 'package:ilmercato/size_config.dart';
import 'package:ilmercato/widget/AppBarWidget.dart';
import 'package:ilmercato/widget/MenuWidget.dart';
import 'package:ilmercato/widget/breadcrumWidget.dart';
import 'package:ilmercato/screens/cart/model/shoppingcartH.dart';
import 'package:ilmercato/widget/webView.dart';
import '../order/model/OrderModel.dart';
import 'package:ilmercato/widget/backWidget.dart';


class Payment extends StatefulWidget {

  final DeliveryModel deliveryModel;
  const Payment({required this.deliveryModel });

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {

  final GlobalKey<ScaffoldState> sKey = GlobalKey();
  OrderModel newModel = new OrderModel();
  String? paymentOption;

  void url() async
  {
    await LaunchApp.openApp(
      androidPackageName: 'com.ilmercato.shopping.ilmercato',
      iosUrlScheme: 'id1206294474://',
      appStoreLink: 'itms-apps://apps.apple.com/in/app/ofa-client/id1206294474',
      // openStore: false
    );
  }

 //
 // initiatePayment() async {
 //    final String apiUrl = '${ServerConstants.paymentGatewayApi}'; // Replace with your server URL
 //
 //    // Prepare the payment data
 //    Map<String, dynamic> paymentData = {
 //      'amount': ShopCartsH().finalAmount.toStringAsFixed(3),
 //    };
 //
 //    // Make the HTTP POST request to your server
 //    final response = await Dio()
 //        .post(apiUrl, data: paymentData);
 //    print("hhhhcode ${response.statusCode}");
 //
 //    // Handle the response from the server
 //    if (response.statusCode == 200) {
 //      // Parse the response JSON if necessary
 //      print("hhhhdata ${response.data}");
 //      Map<String, dynamic> responseData = jsonDecode(response.data);
 //      print("hhhhdata ${responseData}");     // Check the payment status and take appropriate actions
 //      bool paymentSuccess = responseData['success'];
 //      if (paymentSuccess) {
 //        // Payment successful, update UI or navigate to the success screen
 //        print('Payment successful');
 //      } else {
 //        // Payment failed, show an error message to the user
 //        String errorMessage = responseData['error'];
 //        print('Payment failed: $errorMessage');
 //      }
 //    } else {
 //      // Handle server errors or network issues
 //      print('Failed to connect to the server');
 //    }
 //  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ValueListenableBuilder<Box<ShoppingCartH>>(
        valueListenable: ShopCartsH.getShoppingDetail().listenable(),
        builder: (context, box, _) {
          final shoppingCartH = box.values.toList().cast<ShoppingCartH>();

          return Scaffold(
            key: sKey,
            backgroundColor: kBackgroundColor,
            appBar: PreferredSize(
              preferredSize: Size(80, 60),
              child: commonAppBarWidget(context, "",sKey),
            ),
            drawerEnableOpenDragGesture: false,
            drawer:NavigationDrawer1(),
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   // Container(
                      //   height: 50,
                      //   child: MenuCard()),
                  SizedBox(height: 10,),
                  BackButton1(),
                  BreadCrumExtraButton(name: "Payment"),
                  SizedBox(height: 10,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OrderScreenGate(deliveryModel: widget.deliveryModel,paymentMethod: "Benefit",shoppingCart:shoppingCartH,total: ShopCartsH().finalAmount ,status: "Pending payment"),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10,),
                            Row(children:[
                              Text("Payment through Debit/Credit Card",style: headingRate,),
                              Spacer(),
                              IconButton(onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => OrderScreenGate(deliveryModel: widget.deliveryModel,paymentMethod: "Benefit",shoppingCart:shoppingCartH,total: ShopCartsH().finalAmount ,status: "Pending payment"),
                                  ),
                                );

                               }, icon: Icon(Icons.arrow_forward_ios,color: kDarkTextColor,))
                            ]),
                            SizedBox(height: 10,),
                            Text("Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order will not be shipped until the funds have cleared in our account.",style: smallListTextBlack,),
                          ],),
                      ),
                    ),
                  ),
                  // SizedBox(height: 20,),
                  // Container(
                  //   decoration: BoxDecoration(
                  //     color: Colors.white,
                  //     borderRadius: BorderRadius.only(
                  //       topLeft: Radius.circular(30),
                  //       topRight: Radius.circular(30),
                  //     ),
                  //   ),

                  //   child: Padding(
                  //     padding: const EdgeInsets.all(10.0),
                  //     child: Column(
                  //       mainAxisAlignment: MainAxisAlignment.start,
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [
                  //         SizedBox(height: 10,),
                  //         Row(children:[
                  //           Text("Pay with BenefitPay",style: headingRate,),
                  //           Spacer(),
                  //           IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: kDarkTextColor,))
                  //        ]),
                  //         SizedBox(height: 10,),

                  //         Text("Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order will not be shipped until the funds have cleared in our account.",style: smallListTextBlack,),
                  //       ],),
                  //   ),
                  // ),
                  // SizedBox(height: 20,),
                  // Container(
                  //   decoration: BoxDecoration(
                  //     color: Colors.white,
                  //     borderRadius: BorderRadius.only(
                  //       topLeft: Radius.circular(30),
                  //       topRight: Radius.circular(30),
                  //     ),
                  //   ),
                  //   child: Padding(
                  //     padding: const EdgeInsets.all(10.0),
                  //     child: Column(
                  //       mainAxisAlignment: MainAxisAlignment.start,
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [
                  //         SizedBox(height: 10,),
                  //         Row(children:[
                  //           Text("UPI",style: headingRate,),
                  //           Spacer(),
                  //           IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: kDarkTextColor,))
                  //         ]),
                  //         SizedBox(height: 10,),
                  //         Text("Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order will not be shipped until the funds have cleared in our account.",style: smallListTextBlack,),
                  //       ],),
                  //   ),
                  // ),
                  SizedBox(height: 20,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OrderScreen(deliveryModel: widget.deliveryModel,paymentMethod: "COD",shoppingCart:shoppingCartH,total: ShopCartsH().finalAmount,status: "Pending payment"),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10,),
                            Row(children:[
                              Text("Cash on Delivery",style: headingRate,),
                              Spacer(),
                              IconButton(onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => OrderScreen(deliveryModel: widget.deliveryModel,paymentMethod: "COD",shoppingCart:shoppingCartH,total: ShopCartsH().finalAmount,status: "Pending payment"),
                                  ),
                                );
                              }, icon: Icon(Icons.arrow_forward_ios,color: kDarkTextColor,))
                            ]),
                            SizedBox(height: 10,),
                            Text("Please Cash on Delivery",style: smallListTextBlack,),
                          ],),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}