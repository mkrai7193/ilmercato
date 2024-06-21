import 'package:flutter/material.dart';
import 'package:ilmercato/components/coustom_bottom_nav_bar.dart';
import 'package:ilmercato/constants.dart';
import 'package:ilmercato/enums.dart';
import 'package:ilmercato/navigationDrawer.dart';
import 'package:ilmercato/widget/AppBarWidget.dart';
import 'package:ilmercato/widget/MenuWidget.dart';
import 'package:ilmercato/widget/breadcrumWidget.dart';
import 'components/body.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:ilmercato/screens/cart/model/boxes.dart';
import 'package:ilmercato/screens/cart/model/shoppingcartH.dart';
import 'package:ilmercato/widget/backWidget.dart';

class ProductDetailsScreen extends StatelessWidget {
  static String routeName = "/details";
  final String pid;
  final String pname;
  final GlobalKey<ScaffoldState> sKey = GlobalKey();

  ProductDetailsScreen({required this.pid, required this.pname});


  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Box<ShoppingCartH>>(
        valueListenable: ShopCartsH.getShoppingDetail().listenable(),
        builder: (context, box, _) {
          return Scaffold(
            key: sKey,
            backgroundColor: kBackgroundColor,

            appBar: PreferredSize(
              preferredSize: Size(80, 60),
              child: commonAppBarWidget(context,"",sKey),
            ),
            drawerEnableOpenDragGesture: false,
            drawer:NavigationDrawer1(),
            body: SafeArea(
              top: true,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   // Container(
                      //   height: 50,
                      //   child: MenuCard()),
                  SizedBox(height: 10,),
                  BackButton1(),
                  BreadCrumButton(id:pid,name: pname,link:"Productdetail" ),
                  SizedBox(height: 5,),
                  Expanded(
                    flex: 1,
                      child: Body(pid: pid)),
                ],
              ),
            ),
            bottomNavigationBar:
            CustomBottomNavBar(selectedMenu: MenuState.home),
          );
        });
  }
}
