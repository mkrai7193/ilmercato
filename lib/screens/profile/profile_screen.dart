import 'package:flutter/material.dart';
import 'package:ilmercato/components/coustom_bottom_nav_bar.dart';
import 'package:ilmercato/constants.dart';
import 'package:ilmercato/enums.dart';
import 'package:ilmercato/navigationDrawer.dart';
import 'package:ilmercato/widget/AppBarWidget.dart';
import 'package:ilmercato/widget/MenuWidget.dart';
import 'package:ilmercato/widget/backWidget.dart';
import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  final GlobalKey<ScaffoldState> sKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                //   height: 50,
                //     child:   // Container(
                      //   height: 50,
                      //   child: MenuCard()),
                SizedBox(height: 10,),
                BackButton1(),
                SizedBox(height: 10,),
                Body()
              ])),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
