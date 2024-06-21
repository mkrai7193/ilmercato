import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:ilmercato/components/default_button.dart';
import 'package:ilmercato/constants.dart';
import 'package:ilmercato/navigationDrawer.dart';
import 'package:ilmercato/screens/cart/model/boxes.dart';
import 'package:ilmercato/screens/cart/model/shoppingcartH.dart';
import 'package:ilmercato/screens/checkout/coupon_redeem.dart';
import 'package:ilmercato/size_config.dart';
import 'package:ilmercato/widget/AppBarWidget.dart';
import 'package:ilmercato/widget/MenuWidget.dart';
import 'package:ilmercato/widget/breadcrumWidget.dart';
import '../cart/components/body.dart';
import '../shippingdetail/shipping.dart';
import 'components/blank_cart.dart';
import 'components/check_out_card.dart';
import 'package:ilmercato/widget/backWidget.dart';

class Checkout extends StatefulWidget {
  const Checkout();

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
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
                  BreadCrumExtraButton(name: "Checkout"),
                  SizedBox(height: 10,),
                  Center(
                    child: LargeDefaultButton(
                      text: "MANAGE SHIPPING DETAIL",
                      press: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Shipping()));
                      },
                    ),
                  ),
                  // SizedBox(height: 10,),
                  // Divider(thickness:1,color: kDarkTextColor, ),
                  // Body1(),
                   Divider(thickness:1,color: kDarkTextColor, ),
                   SizedBox(height: 10,),
                   Center(
                    child: LargeDefaultButton(
                      text: "REDEEM COUPON CODE",
                      press: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CouponRedeem()));
                      },
                    ),
                  ),


                  Divider(thickness:1,color: kDarkTextColor, ),
                  (shoppingCartH.length) != 0 ? Body(shoppingCart: shoppingCartH): Center(
                      child: Icon(Icons.work_outline, size: 200,)),

                ],
              ),
            ),
            bottomNavigationBar:(ShopCartsH().itemCount)!=0 ? CheckoutCard() : BlankCard(),

          );
        });
  }
}