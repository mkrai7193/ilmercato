import 'package:flutter/material.dart';
import 'package:ilmercato/components/coustom_bottom_nav_bar.dart';
import 'package:ilmercato/constants.dart';
import 'package:ilmercato/enums.dart';
import 'package:ilmercato/navigationDrawer.dart';
import 'package:ilmercato/screens/home/components/slider.dart';
import 'package:ilmercato/widget/AppBarWidget.dart';
import 'package:ilmercato/widget/MenuWidget.dart';
import '../../size_config.dart';
import 'components/categories.dart';


class HomeScreen extends StatefulWidget {
  static String routeName = "/home";
  final bool initial;

  HomeScreen({this.initial = true});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}
// Create a key
class _HomeScreenState extends State<HomeScreen> {
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
                  SafeArea(
                    top: true,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                      // Container(
                      //   height: 50,
                      //   child: MenuCard()),
                        Expanded(
                            flex:2,
                            child: Container(
                                width: MediaQuery.of(context).size.width,
                                child: SliderA())),
                        Expanded(
                          flex:4,
                          child: Categories(),
                        ),

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
