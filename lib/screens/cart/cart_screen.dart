import 'package:ilmercato/constants.dart';
import 'package:ilmercato/navigationDrawer.dart';
import 'package:flutter/material.dart';
import 'package:ilmercato/size_config.dart';
import 'package:ilmercato/widget/AppBarWidget.dart';
import 'package:ilmercato/widget/MenuWidget.dart';
import 'package:ilmercato/widget/breadcrumWidget.dart';
import 'components/blank_cart.dart';
import 'components/body.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'components/check_out_card.dart';

import 'model/boxes.dart';
import 'model/shoppingcartH.dart';
import 'package:ilmercato/widget/backWidget.dart';

class CartScreen extends StatefulWidget {
  static String routeName = "/cart";

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  final GlobalKey<ScaffoldState> sKey = GlobalKey();
  @override
  void dispose() {
    Hive.box("ShopCartsH").close();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
     return ValueListenableBuilder<Box<ShoppingCartH>>(
        valueListenable: ShopCartsH.getShoppingDetail().listenable(),
        builder: (context, box, _) {
          final shoppingCartH = box.values.toList().cast<ShoppingCartH>();
          return  Scaffold(
            key: sKey,
            backgroundColor: kBackgroundColor,
            appBar: PreferredSize(
              preferredSize: Size(80, 60),
              child: commonAppBarWidget(context,"",sKey),
            ),
            drawerEnableOpenDragGesture: false,
            drawer:NavigationDrawer1(),
              body: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Container(
                    //     height: 50,
                    //     child:   // Container(
                      //   height: 50,
                      //   child: MenuCard()),
                    SizedBox(height: 10,),
                    BackButton1(),
                    BreadCrumExtraButton(name: "Cart"),
                    SizedBox(height: 10,),
                    (shoppingCartH.length) != 0 ? Body(shoppingCart: shoppingCartH): Center(
                         child: Icon(Icons.work_outline, size: 200,)),
                  ],
                ),
              ),

                bottomNavigationBar:(ShopCartsH().itemCount)!=0 ? CheckoutCard() : BlankCard(),
              );
        });
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color:kAppBarIconColor,opacity: 1),
      backgroundColor: kDarkTextColor,
      title: Row(
        children: [
          Text(
            "My Cart",
            style: TextStyle(color: kTextColor),
          ),
          Spacer(),
          Text.rich(
                 TextSpan(
                   text: "  Items",
                   style: TextStyle(fontSize: 14, color:kTextColor,fontWeight: FontWeight.w500),
                   children: [
                     TextSpan(
                       text: " (${ShopCartsH().itemCount.toString()})",
                       style: TextStyle(fontSize: 14, color:kTextColor,fontWeight: FontWeight.w600),
                     ),
                   ],
                 ),
               ),
          // Text(
          //   "${ShopCarts().itemCount.toString()} items",
          //   style: Theme.of(context).textTheme.caption,
          // ),
        ],
      ),
    );
  }
}
