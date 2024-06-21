import 'package:flutter/material.dart';
import 'package:ilmercato/components/coustom_bottom_nav_bar.dart';
import 'package:ilmercato/enums.dart';
import 'package:ilmercato/navigationDrawer.dart';
import 'package:ilmercato/screens/home/components/slider.dart';
import 'package:ilmercato/widget/AppBarWidget.dart';
import 'package:ilmercato/widget/MenuWidget.dart';
import 'package:ilmercato/widget/breadcrumWidget.dart';
import 'components/body.dart';
import 'package:ilmercato/widget/backWidget.dart';

class CategoryScreen extends StatelessWidget {
  static String routeName = "/category";
  final String parent;
  final String cname;
  final GlobalKey<ScaffoldState> sKey = GlobalKey();

  CategoryScreen({required this.parent, required this.cname});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: sKey,
      appBar: PreferredSize(preferredSize: Size(80, 60),
        child: commonAppBarWidget(context,(parent =="0")? "Category" : "${cname.toString()}",sKey),
      ),
        drawerEnableOpenDragGesture: false,
        drawer:NavigationDrawer1(),
      body:   Stack(
        children: [
        Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Image.asset(
          "assets/images/bg2.jpeg",
          fit: BoxFit.fill,
        ),
      ),
        SafeArea(
          top: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               // Container(
                      //   height: 50,
                      //   child: MenuCard()),

              Expanded(
                  flex:2,
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: SliderA())),
              SizedBox(height: 10,),
              BackButton1(),
              BreadCrumButton(id:parent,name: cname,link:"Category" ),
              SizedBox(height: 5,),
              Expanded(
                flex:4,
                child: Body(parent: parent)
              ),

            ],
          ),
        ),
      ]),
        bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home)
    );
  }
}
