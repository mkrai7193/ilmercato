import 'package:ilmercato/Api/LoginApi.dart';
import 'package:ilmercato/components/default_button.dart';
import 'package:ilmercato/constants.dart';
import 'package:flutter/material.dart';
import 'package:ilmercato/main.dart';
import 'package:ilmercato/screens/checkout/model/deliveryModel.dart';
import 'package:ilmercato/screens/shipping/shipping.dart';


class Body1 extends StatefulWidget {
  final DeliveryModel deliveryModel;
  const Body1({required this.deliveryModel });

  @override
  _Body1State createState() => _Body1State();
}
class _Body1State extends State<Body1> {

  @override
  Widget build(BuildContext context) {
    return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 15),
                    child: Text("Delivery Address",style: listTextLight,),
                  ),
                  Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //    SizedBox(height: 10,),
                              Row(
                                children: [
                                  Text("${widget.deliveryModel.firstName}",style: headingRate,),
                                  Spacer(),
                                  SmallColorDefaultButton(
                                    text: "Change",
                                    press: (){
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => ShippingScreen(id:'1',deliveryModel: widget.deliveryModel)));
                                    },
                                  )
                                ],
                              ),
                              SizedBox(height: 10,),
                              Text("${widget.deliveryModel.billing1!.address1}", style: smallListText,),
                              Text("${widget.deliveryModel.billing1!.city}, ${widget.deliveryModel.billing1!.state}, ${widget.deliveryModel.billing1!.country} - ${widget.deliveryModel.billing1!.postcode}", style: smallListText,),
                              Text("Phone :- ${widget.deliveryModel.billing1!.phone}", style: smallListText,),
                              Text("Email :- ${widget.deliveryModel.billing1!.email}", style: smallListText,),
                              Divider(thickness: 1,color: kTextColor,
                              )

                            ],),
                        ),

                ],
              ),
            );
  }
}
