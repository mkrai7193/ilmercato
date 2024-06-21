import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:ilmercato/components/coustom_bottom_nav_bar.dart';
import 'package:ilmercato/components/default_button.dart';
import 'package:ilmercato/constants.dart';
import 'package:ilmercato/enums.dart';
import 'package:ilmercato/navigationDrawer.dart';
import 'package:ilmercato/screens/cart/model/shoppingcartH.dart';
import 'package:ilmercato/screens/dashboard/components/OrderDetailReport.dart';
import 'package:ilmercato/screens/dashboard/dashboard_screen.dart';
import 'package:ilmercato/screens/home/home_screen.dart';
import 'package:ilmercato/size_config.dart';
import 'package:ilmercato/widget/AppBarWidget.dart';
import 'package:ilmercato/widget/MenuWidget.dart';

class ThankYou extends StatefulWidget {
  static String routeName = "/thankyou";
  const ThankYou();

  @override
  State<ThankYou> createState() => _ThankYouState();
}

class _ThankYouState extends State<ThankYou> {
  final GlobalKey<ScaffoldState> sKey = GlobalKey();

  void initState() {
    super.initState();
    Hive.box<ShoppingCartH>('ShopCartsH').clear();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   // Container(
                      //   height: 50,
                      //   child: MenuCard()),
                  SizedBox(height: 20,),

                  Icon(Icons.task_alt,size: 100, color: kTextColor,),
                  SizedBox(height: 10,),
                  Text("Thank You!",style: headingRate,),
                  SizedBox(height: 10,),
                  Text("Your order has been successfully placed",style: smallListTextBlack,),
                  SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children:[
                            Text("View Details",style: listTextColor,),
                            Spacer(),
                            IconButton(onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DashboardScreen()
                                ),
                              );
                            }, icon: Icon(Icons.arrow_forward_ios, color: kDarkTextColor,))
                          ]),
                          Divider(color: kTextColor,height: 1,),
                          SizedBox(height: 10,),
                          // Text("Deliver To",style: listTextLight,),
                          // SizedBox(height: 10,),
                          // Text("Gudaibiya, Bani Otbah avenue, Manama, Bahrain",style: smallListTextBlack,),
                          // SizedBox(height: 20,),
                          // Row(children:[
                          //   Image.asset("assets/vector/delivery.png",width: 30),
                          //   SizedBox(width: 10,),
                          //   Text("Delivery by Friday, 10 November, 2023",style: smallListText,),
                          // ]),
                          SizedBox(height: 20,),
                          Row(children:[
                            Image.asset("assets/vector/return.png",width: 30),
                            SizedBox(width: 10,),
                            Text("30 Days Exchange/Return Available",style: smallListText,),
                          ]),
                          // SizedBox(height: 20,),
                          // Divider(color: kTextColor,height: 1,),
                          // SizedBox(height: 10,),
                          // Row(children:[
                          //   Text("Total Amount",style: listText,),
                          //   Spacer(),
                          //   Text("BD 1000.50",style: listText,),
                          // ]),
                          SizedBox(height: 20,),
                        ],),
                    ),
                  ),
                  SizedBox(height: 20,),
                DefaultButton(
                  text: "CONTINUE SHOPPING",
                  press: (){
                    Navigator.pushAndRemoveUntil(
                      context,
                      new MaterialPageRoute(
                        builder: (BuildContext context) => new HomeScreen(),
                      ),
                      (route) => true,
                    );
                  },
                ),
                  SizedBox(height: 20,),
                ],
              ),
            ),

          );
  }
}
