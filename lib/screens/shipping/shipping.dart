import 'package:flutter/material.dart';
import 'package:ilmercato/constants.dart';
import 'package:ilmercato/screens/checkout/model/deliveryModel.dart';
import 'package:ilmercato/screens/shipping/components/shipping_form.dart';
import 'package:ilmercato/size_config.dart';


class ShippingScreen extends StatefulWidget {
  static String routeName = "/shipping";
  final String id;
   final DeliveryModel deliveryModel;

  const ShippingScreen({super.key, required this.id, required this.deliveryModel});

  @override
  State<ShippingScreen> createState() => _ShippingScreenState();
}

class _ShippingScreenState extends State<ShippingScreen> {


  @override
  Widget build(BuildContext context) {

      return Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: AppBar(
          iconTheme: IconThemeData(color: kSecondaryColor),

          title:Text("Shipping Detail",style: listTextWhite,),
          backgroundColor: kDarkTextColor,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 0),
                child: ShippingForm(id:widget.id, deliveryModel: widget.deliveryModel),
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.06),
            ],
          ),
        ),
      );
  }
}
