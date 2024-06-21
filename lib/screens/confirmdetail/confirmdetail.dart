import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:ilmercato/components/default_button.dart';
import 'package:ilmercato/constants.dart';
import 'package:ilmercato/navigationDrawer.dart';
import 'package:ilmercato/screens/cart/model/boxes.dart';
import 'package:ilmercato/screens/cart/model/shoppingcartH.dart';
import 'package:ilmercato/screens/checkout/model/deliveryModel.dart';
import 'package:ilmercato/screens/payment/payment.dart';
import 'package:ilmercato/size_config.dart';
import 'package:ilmercato/widget/AppBarWidget.dart';
import 'package:ilmercato/widget/MenuWidget.dart';
import '../cart/components/body.dart';
import 'components/blank_cart.dart';
import 'components/body.dart';
import 'components/check_out_card.dart';
import 'package:ilmercato/widget/backWidget.dart';

class ConfirmDetail extends StatefulWidget {
  final DeliveryModel deliveryModel;
  const ConfirmDetail({required this.deliveryModel });

  @override
  State<ConfirmDetail> createState() => _ConfirmDetailState();
}

class _ConfirmDetailState extends State<ConfirmDetail> {
  final GlobalKey<ScaffoldState> sKey = GlobalKey();

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
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0,top: 10,bottom: 20),
                    child: Text("Confirm Detail",style: headingRate,),
                  ),

                  Body1(deliveryModel: widget.deliveryModel),
                  SizedBox(height: 10,),
                  (shoppingCartH.length) != 0 ? Body(shoppingCart: shoppingCartH): Center(
                      child: Icon(Icons.work_outline, size: 200,)),
                  SizedBox(height: 10,),
                  Center(
                    child: DefaultButton(
                      text: "CONTINUE",
                      press: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Payment(deliveryModel: widget.deliveryModel)));
                      },
                    ),
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
            bottomNavigationBar:(ShopCartsH().itemCount)!=0 ? CheckoutCard() : BlankCard(),

          );
        });
  }
}