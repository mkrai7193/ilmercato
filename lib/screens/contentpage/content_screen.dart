import 'package:flutter/material.dart';
import 'package:ilmercato/components/coustom_bottom_nav_bar.dart';
import 'package:ilmercato/constants.dart';
import 'package:ilmercato/enums.dart';
import 'package:ilmercato/navigationDrawer.dart';
import 'package:ilmercato/size_config.dart';
import 'package:ilmercato/widget/AppBarWidget.dart';
import 'package:ilmercato/widget/MenuWidget.dart';
import 'components/body.dart';
import 'package:ilmercato/widget/backWidget.dart';

class ContentScreen extends StatelessWidget {
  static String routeName = "/content";
  final String cmsId;
  final GlobalKey<ScaffoldState> sKey = GlobalKey();

   ContentScreen({Key? key, required this.cmsId}) : super(key: key);



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
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Container(
                //     height: 50,
                //     child:   // Container(
                      //   height: 50,
                      //   child: MenuCard()),
                SizedBox(height: 10,),
                BackButton1(),
                Body(cmsId: cmsId),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar:
      CustomBottomNavBar(selectedMenu: MenuState.home),
    );

  }
}

