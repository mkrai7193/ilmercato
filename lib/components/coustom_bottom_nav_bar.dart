
import 'package:flutter/material.dart';
import 'package:ilmercato/main.dart';
import 'package:ilmercato/screens/cart/cart_screen.dart';
import 'package:ilmercato/screens/contact/contact_screen.dart';
import 'package:ilmercato/screens/dashboard/components/OrderDetailReport.dart';
import 'package:ilmercato/screens/dashboard/components/body.dart';
import 'package:ilmercato/screens/dashboard/dashboard_screen.dart';
import 'package:ilmercato/screens/home/home_screen.dart';
import 'package:ilmercato/screens/profile/profile_screen.dart';
import 'package:ilmercato/screens/sign_in/sign_in_screen.dart';

import '../constants.dart';
import '../enums.dart';
import '../screens/cart/model/boxes.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: kBottomBgColor,
      padding: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: [
          GestureDetector(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomeScreen()));
            },
            child: Column(
              children: [
                Image.asset("assets/vector/home.png",height: 22,width: 22,),
                SizedBox(height: 5,),
                Text("Home",style: TextStyle(
                  fontSize: 12,
                  color: kSecondaryColor,
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                ),)
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              (prefs!.getString('id').toString() == 'null')?
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SignInScreen()))
                 :  Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DashboardScreen()));
            },
            child: Column(
              children: [
                Image.asset("assets/vector/order.png",height: 22,width: 22,),
                SizedBox(height: 5,),
                Text("My Order",style: TextStyle(
                  fontSize: 12,
                  color: kSecondaryColor,
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                ),)
              ],
            ),
          ),


          GestureDetector(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CartScreen()));
            },
            child: Stack(
              children: [
                Container(
                  child: Column(
                    children: [
                      Image.asset("assets/vector/basket.png",height: 22,width: 22,),
                      SizedBox(height: 5,),
                      Text("Basket",style: TextStyle(
                        fontSize: 12,
                        color: kSecondaryColor,
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                      ),),
                    ],
                  ),
                ),

                (ShopCartsH().itemCount>0)?Positioned(
                    top: -8,
                    left:28,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10))

                      ),
                      child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(ShopCartsH().itemCount.toString(),style: TextStyle(color:kSecondaryColor),)),
                    ))
                    :Positioned(
                    top: -8,
                    left:28,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child:Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text("0",
                                style: TextStyle(color:kSecondaryColor))),
                    )),
              ],
            ),
          ),

          GestureDetector(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ContactScreen()));
            },
            child: Column(
              children: [
                Image.asset("assets/vector/support.png",height: 22,width: 22,),
                SizedBox(height: 5,),
                Text("Support",style: TextStyle(
                  fontSize: 12,
                  color: kSecondaryColor,
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                ),)
              ],
            ),
          ),

          GestureDetector(
            onTap: (){
              (prefs!.getString('id').toString() == 'null')?
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SignInScreen())):
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProfileScreen()));
            },
            child: Column(
              children: [
                Image.asset("assets/vector/my-account.png",height: 22,width: 22,),
                SizedBox(height: 5,),
                Text("My Account",style: TextStyle(
                  fontSize: 12,
                  color: kSecondaryColor,
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                ),)
              ],
            ),
          ),

        ],
      ),
    );
  }
}
