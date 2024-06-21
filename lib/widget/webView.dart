import 'dart:async';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:ilmercato/Api/LoginApi.dart';
import 'package:ilmercato/Api/ServerConstants.dart';
import 'package:ilmercato/main.dart';
import 'package:ilmercato/screens/home/home_screen.dart';
import 'package:ilmercato/screens/order/order_screen.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';
import 'package:ilmercato/screens/cart/model/boxes.dart';
import 'package:ilmercato/screens/cart/model/shoppingcartH.dart';
import 'package:ilmercato/screens/checkout/model/deliveryModel.dart';


class WebView1 extends StatefulWidget {
  final DeliveryModel deliveryModel;
  final String paymentMethod;
  final List<ShoppingCartH> shoppingCart;
  final double total;
  final String orderno;

  const WebView1({Key? key, required this.deliveryModel, required this.shoppingCart, required this.paymentMethod, required this.total, required this.orderno }) : super(key: key);

  @override
  _WebViewExampleState createState() => _WebViewExampleState();
}

class _WebViewExampleState extends State<WebView1> {
  bool isLoading =true;
  var status;

  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
     _fetchDataUntilConditionMet();
  }


 // Function to execute API call until condition met
   _fetchDataUntilConditionMet() async {
     setState(() {
       _isLoading = true; // Show loading indicator
     });
     bool conditionMet = false;
     while (!conditionMet) {
       // Perform API call
       var response = await LoginApi.CheckOrderApi({"orderno": widget.orderno});

       if (response.status == "200") {
         String code = response.data.toString();

         // Check if condition is met
         if (code == '00') {
           conditionMet = true;

           // Navigate to another page
           Navigator.pushAndRemoveUntil(
             context,
             new MaterialPageRoute(
               builder: (BuildContext context) =>
               new OrderScreen(
                   deliveryModel: widget.deliveryModel,
                   paymentMethod: "Benefit",
                   shoppingCart: widget.shoppingCart,
                   status: "Processing",
                   total: ShopCartsH().finalAmount),
             ),
                 (route) => true,
           );
         } else
         if (code == '05' || code == '14' || code == '33' || code == '36' ||
             code == '38' || code == '51' || code == '54' || code == '55' ||
             code == '61' || code == '62' || code == '65' || code == '75' ||
             code == '76' || code == '78' || code == '91' || code == '100' ||
             code == '101' || code == '102' || code == '103') {
           conditionMet = true;
           Fluttertoast.showToast(msg: response.message.toString());
           // Navigate to another page
           Navigator.pushAndRemoveUntil(
             context,
             new MaterialPageRoute(
                 builder: (BuildContext context) =>
                 new HomeScreen()
             ),
                 (route) => true,
           );
         }

         // Delay before next API call (optional)
         await Future.delayed(Duration(seconds: 1));
       }
     }
   }

   late WebViewController controller;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Box<ShoppingCartH>>(
        valueListenable: ShopCartsH.getShoppingDetail().listenable(),
        builder: (context, box, _) {
        final shoppingCartH = box.values.toList().cast<ShoppingCartH>();

       return Scaffold(
        body: Stack(
          children: <Widget>[
            WebView(
              onWebResourceError: (WebResourceError webviewerrr) {
                print("Handle your Error Page here");
              },
              onWebViewCreated: (WebViewController webViewController) {
                controller = webViewController;
              },
              initialUrl: "${ServerConstants.paymentGatewayApi}?price=${ShopCartsH().finalAmount.toStringAsFixed(3)}&udf1=${widget.orderno}&udf2=${prefs!.getString("id").toString()}",
              javascriptMode: JavascriptMode.unrestricted,

              gestureNavigationEnabled: true,

              debuggingEnabled: true,
              onPageFinished: (finish) {
                setState(() {
                  isLoading = false;
                });

              },
            ),
            isLoading ? Center( child: CircularProgressIndicator(),)
                : Stack(),
          ],
        ),

        // floatingActionButton: FloatingActionButton(
        //   onPressed: (){},
        //       //displayModalBottomSheet(context),
        //   child: Icon(Icons.menu,color:Color(0xFF9e7207)),
        //   backgroundColor: Colors.white,
        // ),

      );
    });
  }
  // void displayModalBottomSheet(context) {
  //
  //   showModalBottomSheet(
  //       context: context,
  //       builder: (BuildContext bc) {
  //         return Container(
  //           decoration: BoxDecoration(
  //             color: Colors.white,
  //           ),
  //           child: Categories(),
  //         );
  //       });
  // }
}