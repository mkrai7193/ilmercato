import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:ilmercato/components/coustom_bottom_nav_bar.dart';
import 'package:ilmercato/constants.dart';
import 'package:ilmercato/enums.dart';
import 'package:ilmercato/navigationDrawer.dart';
import 'package:ilmercato/screens/cart/model/boxes.dart';
import 'package:ilmercato/screens/cart/model/shoppingcartH.dart';
import 'package:ilmercato/screens/checkout/components/coupon_redeem_form.dart';
import 'package:ilmercato/size_config.dart';
import 'package:ilmercato/widget/AppBarWidget.dart';
import 'package:ilmercato/widget/MenuWidget.dart';
import 'package:ilmercato/widget/backWidget.dart';

class CouponRedeem extends StatefulWidget {
  const CouponRedeem();

  @override
  State<CouponRedeem> createState() => _CouponRedeemState();
}

class _CouponRedeemState extends State<CouponRedeem> {
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
                    child: Text("Coupon Redeem",style: headingRate,),
                  ),
                  CouponRedeemForm(),

                ],
              ),
            ),
              bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home)

          );
        });
  }
}