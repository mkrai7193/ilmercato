import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:ilmercato/components/default_button.dart';
import 'package:ilmercato/constants.dart';
import 'package:ilmercato/main.dart';
import 'package:ilmercato/screens/cart/model/shoppingcartH.dart';
import 'package:ilmercato/screens/contact/contact_screen.dart';
import 'package:ilmercato/screens/contentpage/content_screen.dart';
import 'package:ilmercato/screens/coupon/coupon_screen.dart';
import 'package:ilmercato/screens/dashboard/components/report.dart';
import 'package:ilmercato/screens/dashboard/dashboard_screen.dart';
import 'package:ilmercato/screens/editProfile/editprofile.dart';
import 'package:ilmercato/screens/profile/components/profile_pic.dart';
import 'package:ilmercato/screens/sign_in/sign_in_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'profile_menu.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 10),
          Text("${prefs!.getString("name").toString()}", style: listTextColor,),
          SizedBox(height: 10),

          ProfileMenu1(
            text: "Account Info",
            icon: "assets/vector/edit-account.png",
            press: () {
              (prefs!.getString("id").toString() != "null")?
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (BuildContext context) =>
                      new EditProfile(),
                    )):
              Navigator.push(
              context,
              new MaterialPageRoute(
              builder: (BuildContext context) =>
              new SignInScreen(),
              ));
              }
          ),
          // ProfileMenu(
          //   text: "My Order",
          //   icon: "assets/vector/edit-account.png",
          //   press: () {
          //     Navigator.push(
          //         context,
          //         new MaterialPageRoute(
          //           builder: (BuildContext context) =>
          //           new DashboardScreen(),
          //         ));
          //   },
          // ),
          ProfileMenu(
              text: "Terms & Conditions",
              icon: "assets/vector/privacy-policy.png",
              press: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (BuildContext context) =>
                      new ContentScreen(cmsId: "3449"),
                    ));
              }),
          // ProfileMenu(
          //     text: "Return & Refund Policy",
          //     icon: "assets/vector/privacy-policy.png",
          //     press: () {
          //       Navigator.push(
          //           context,
          //           new MaterialPageRoute(
          //             builder: (BuildContext context) =>
          //             new ContentScreen(cmsId: "1247"),
          //           ));
          //     }),

          // ProfileMenu(
          //     text: "Reward or Coupon",
          //     icon: "assets/vector/rewards.png",
          //     press: () {
          //       Navigator.push(
          //           context,
          //           new MaterialPageRoute(
          //             builder: (BuildContext context) =>
          //             new CouponScreen(),
          //           ));
          //     }),

          ProfileMenu(
              text: "Privacy Policy",
              icon: "assets/vector/privacy-policy.png",
              press: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (BuildContext context) =>
                      new ContentScreen(cmsId: "3"),
                    ));
              }),
          ProfileMenu(
              text: "About Us",
              icon: "assets/vector/about-il.png",
              press: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (BuildContext context) =>
                      new ContentScreen(cmsId: "3451"),
                    ));
              }),
          DefaultButton(
            text: "LOGOUT",
            press: () async{
              SharedPreferences prefs = await SharedPreferences.getInstance();
              await prefs.clear();
              Hive.box<ShoppingCartH>('ShopCartsH').clear();
              Navigator.push(
                context,
                new MaterialPageRoute(
                  builder: (BuildContext context) => new SignInScreen(),
                ),
              );
            },
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
