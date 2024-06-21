import 'package:flutter/material.dart';
import 'package:ilmercato/components/default_button.dart';
import 'package:ilmercato/constants.dart';
import 'package:ilmercato/screens/profile/components/profile_menu.dart';
import 'package:ilmercato/widget/MenuWidget.dart';

class ProfileDesign extends StatefulWidget {
  const ProfileDesign();

  @override
  State<ProfileDesign> createState() => _ProfileDesignState();
}

class _ProfileDesignState extends State<ProfileDesign> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MenuCard(),
          SizedBox(height: 10,),
          GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0,top: 10,bottom: 15),
                child: Image.asset("assets/vector/Arrow.png"),
              )
          ),
          SizedBox(height: 10,),
          SizedBox(
              height: 115,
              width: 115,
              child: Stack(
                  fit: StackFit.expand,
                  clipBehavior: Clip.none,
                  children: [
                    CircleAvatar(backgroundImage: AssetImage("assets/images/IMLogo-Square.png"))
                  ])),


          ProfileMenu(
            text: "Edit Profile Info",
            icon: "assets/icons/User.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Address Info",
            icon: "assets/icons/Call.svg",
            press: () {},
          ),
          ProfileMenu(
              text: "Payment Method",
              icon: "assets/icons/Mail.svg",
              press: () {}),
          ProfileMenu(
              text: "Reward or Coupon",
              icon: "assets/icons/Mail.svg",
              press: () {}),
          ProfileMenu(
              text: "Settings",
              icon: "assets/icons/Mail.svg",
              press: () {}),
          ProfileMenu(
              text: "Privacy Policy",
              icon: "assets/icons/Mail.svg",
              press: () {}),
          ProfileMenu(
              text: "About IL ilmercato",
              icon: "assets/icons/Shop Icon.svg",
              press: () {
                // Navigator.push(
                //     context, MaterialPageRoute(builder: (context) => Report()));
              }),
          DefaultButton(
            text: "LOGOUT",
            press: () {
              // prefs?.clear();
              // Hive.box<ShoppingCartH>('ShopCartsH').clear();
              // Navigator.push(
              //   context,
              //   new MaterialPageRoute(
              //     builder: (BuildContext context) => new SignInScreen(),
              //   ),
              // );
            },
          ),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}
