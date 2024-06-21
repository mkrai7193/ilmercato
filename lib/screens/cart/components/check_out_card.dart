
import 'package:ilmercato/components/amount_utils.dart';
import 'package:ilmercato/components/coustom_bottom_nav_bar.dart';
import 'package:ilmercato/components/default_button.dart';
import 'package:ilmercato/constants.dart';
import 'package:ilmercato/enums.dart';
import 'package:ilmercato/main.dart';
import 'package:ilmercato/screens/checkout/checkout.dart';
import 'package:ilmercato/screens/cart/model/boxes.dart';
import 'package:flutter/material.dart';
import 'package:ilmercato/screens/sign_in/sign_in_screen.dart';
import 'package:blinking_text/blinking_text.dart';


class CheckoutCard extends StatefulWidget {

   CheckoutCard({
    Key? key
  }) : super(key: key);

  @override
  _CheckoutCardState createState() => _CheckoutCardState();
}

class _CheckoutCardState extends State<CheckoutCard> {

  double amount =0.0;
  double finalPrice =0.0;


  bool _isVisible = false;

  void showToast() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    double aa=  11.000 - double.parse(ShopCartsH().totalAmount.toStringAsFixed(3));
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          )
        ],
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [


            (double.parse(ShopCartsH().totalAmount.toStringAsFixed(3)) <= 11.000)?
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 20),
                child: BlinkText(
                  'You only need BD ${double.parse(aa.toStringAsFixed(3))} more to avail of the FREE Delivery Service!',
                  style: smallListTextBlack1,
                ),
              ),
            ):
            Container(),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(" Subtotal",style: largeListTextBlack),
                    ),
                    Spacer(),
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: RichText(
                          text: TextSpan(
                            text: "BD ${ShopCartsH().totalAmount.toStringAsFixed(3)} ",
                            style: largeListTextBlack,
                            children: const <TextSpan>[
                              TextSpan(
                                  text: '(Inc. 10% VAT)', style: TextStyle(fontSize: 11)),
                            ],
                          ),
                        ),
                      ),

                    ),
                  ],
                ),
              ),
            ),
            (double.parse(ShopCartsH().totalAmount.toStringAsFixed(3)) <= 11.000)?
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(" Shipping",style: largeListTextBlack),
                    ),
                    Spacer(),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Text("Delivery: BD 1.500",style: largeListTextBlack))
                  ],
                ),
              ),
            ):
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(" Shipping",style: largeListTextBlack),
                    ),
                    Spacer(),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Text("Free Delivery",style: largeListTextBlack))
                  ],
                ),
              ),
            ),

            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(" Total",style: largeListTextBlack),
                    ),
                    Spacer(),
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: RichText(
                          text: TextSpan(
                            text: "BD ${ShopCartsH().finalAmount.toStringAsFixed(3)} ",
                            style: listText,
                            children: const <TextSpan>[
                              TextSpan(
                                  text: '(Inc. 10% VAT)', style: TextStyle(fontSize: 11)),
                            ],
                          ),
                        ),
                      ),

                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                  child:  DefaultButton(
                    text: "CHECKOUT",
                    press: (){
                      (prefs!.getString("id").toString() == 'null')?
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignInScreen()))
                          :
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Checkout()));
                    },
                  )
                ),
              ),
            ),
            CustomBottomNavBar(selectedMenu: MenuState.home),
          ],
        ),
      ),
    );
  }
}

