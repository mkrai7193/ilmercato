import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:ilmercato/components/coustom_bottom_nav_bar.dart';
import 'package:ilmercato/components/default_button.dart';
import 'package:ilmercato/constants.dart';
import 'package:ilmercato/enums.dart';
import 'package:ilmercato/main.dart';
import 'package:ilmercato/navigationDrawer.dart';
import 'package:ilmercato/screens/cart/model/boxes.dart';
import 'package:ilmercato/screens/cart/model/shoppingcartH.dart';
import 'package:ilmercato/screens/checkout/model/deliveryModel.dart';
import 'package:ilmercato/screens/shipping/shipping.dart';
import 'package:ilmercato/size_config.dart';
import 'package:ilmercato/widget/AppBarWidget.dart';
import 'package:ilmercato/widget/MenuWidget.dart';
import 'package:ilmercato/widget/breadcrumWidget.dart';
import 'components/body.dart';
import 'package:ilmercato/widget/backWidget.dart';

class Shipping extends StatefulWidget {

  const Shipping();

  @override
  State<Shipping> createState() => _ShippingState();
}

class _ShippingState extends State<Shipping> {
  final GlobalKey<ScaffoldState> sKey = GlobalKey();

  DeliveryModel model = DeliveryModel(
      firstName:"${prefs!.getString("name").toString()}",
      username: "${prefs!.getString("username").toString()}",
      billing1: Billing1(
        firstName: "${prefs!.getString("name").toString()}",
        phone: "",
        address1:"",
        city: "",
        state: "",
        country: "",
        postcode: "",
        email: "",
      ),
      shipping1: Shipping1(
        firstName: "",
        address1: "",
        city: "",
        state: "",
        country: "",
        postcode: "",
      )
  );

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
                  MenuCard(),
                  SizedBox(height: 10,),
                  BackButton1(),
                  BreadCrumExtraButton(name: "Delivery Address"),
                  SizedBox(height: 10,),
                  Body1(),
                  SizedBox(height: 10,),
                  Center(
                    child: LargeDefaultButton(
                      text: "ADD NEW SHIPPING DETAIL",
                      press: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ShippingScreen(id: "0",deliveryModel:model)));
                      },
                    ),
                  ),
                  SizedBox(height: 10,),

                ],
              ),
            ),
            bottomNavigationBar:
            CustomBottomNavBar(selectedMenu: MenuState.home),

          );
        });
  }
}