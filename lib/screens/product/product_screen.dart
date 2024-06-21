import 'package:flutter/material.dart';
import 'package:ilmercato/Api/LoginApi.dart';
import 'package:ilmercato/components/coustom_bottom_nav_bar.dart';
import 'package:ilmercato/constants.dart';
import 'package:ilmercato/enums.dart';
import 'package:ilmercato/navigationDrawer.dart';
import 'package:ilmercato/screens/cart/model/boxes.dart';
import 'package:ilmercato/screens/cart/model/shoppingcartH.dart';
import 'package:ilmercato/screens/home/home_screen.dart';
import 'package:ilmercato/widget/AppBarWidget.dart';

import 'components/body.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ProductScreen extends StatefulWidget {
  static String routeName = "/product";
  final String parent;
  final String name;


  const ProductScreen({required this.parent, required this.name});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final GlobalKey<ScaffoldState> sKey = GlobalKey();
  int selected = 0;

  // var brand1;
  //
  // Future<dynamic> loadBrand() async {
  //   try {
  //     var res = await LoginApi.GetCategoryBrandApi({"cid":widget.parent});
  //     brand1 = res.data!.records![0].bname.toString();
  //
  //     setState(() {
  //       brand1;
  //     });
  //
  //     return brand1;
  //   } catch (e) {
  //     throw (e);
  //   }
  // }

  @override
  void initState() {
    // TODO: implement initState
//    loadBrand();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Box<ShoppingCartH>>(
        valueListenable: ShopCartsH.getShoppingDetail().listenable(),
        builder: (context, box, _) {
          final shoppingCart = box.values.toList().cast<ShoppingCartH>();
          return Scaffold(
            key: sKey,
            backgroundColor: kBackgroundColor,
            appBar: PreferredSize(
              preferredSize: Size(80, 60),
              child: commonAppBarWidget(context, "",sKey),
            ),
            drawerEnableOpenDragGesture: false,
            drawer:NavigationDrawer1(),
            body: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height,
                    child: Image.asset(
                      "assets/images/bg2.jpeg",
                      fit: BoxFit.fill,
                    ),
                  ),

             //     Body11(parent: widget.parent, brand: brand1.toString())
                  Body11(parent: widget.parent, brand: "",name: widget.name,)
                ]),
            bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
          );
        });
  }
}


