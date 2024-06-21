import 'package:flutter/material.dart';
import 'package:ilmercato/components/coustom_bottom_nav_bar.dart';
import 'package:ilmercato/constants.dart';
import 'package:ilmercato/enums.dart';
import 'package:ilmercato/navigationDrawer.dart';
import 'package:ilmercato/screens/coupon/components/coupon.dart';
import 'package:ilmercato/size_config.dart';
import 'package:ilmercato/widget/AppBarWidget.dart';
import 'package:ilmercato/widget/MenuWidget.dart';

import 'components/body.dart';

class CouponScreen extends StatelessWidget {
  static String routeName = "/coupon";
  final GlobalKey<ScaffoldState> sKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Container(
            //     height: 50,
            //     child:   // Container(
                      //   height: 50,
                      //   child: MenuCard()),

            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child:Container(
                    height: 30,
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset("assets/vector/Arrow.png")),
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,top: 10,bottom: 20),
              child: Text("Coupon Code",style: headingRate,),
            ),
            Expanded(
                flex: 1,
                child: Coupon()),
          ],
        ),
      ),
      bottomNavigationBar:
      CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
