import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hive/hive.dart';
import 'package:ilmercato/Api/LoginApi.dart';
import 'package:ilmercato/Api/ServerConstants.dart';
import 'package:ilmercato/constants.dart';
import 'package:ilmercato/models/UserdeleteModel.dart';
import 'package:ilmercato/screens/cart/cart_screen.dart';
import 'package:ilmercato/screens/cart/model/shoppingcartH.dart';
import 'package:ilmercato/screens/contact/contact_screen.dart';
import 'package:ilmercato/screens/contentpage/content_screen.dart';
import 'package:ilmercato/screens/home/home_screen.dart';
import 'package:ilmercato/screens/profile/profile_screen.dart';
import 'package:ilmercato/screens/sign_in/sign_in_screen.dart';
import 'main.dart';

class NavigationDrawer1 extends StatefulWidget {
  const NavigationDrawer1({Key? key}) : super(key: key);

  @override
  State<NavigationDrawer1> createState() => _NavigationDrawer1State();
}

class _NavigationDrawer1State extends State<NavigationDrawer1> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 250,
        height: MediaQuery.of(context).size.height,
        child: Drawer(
          child: Container(
            color: kPrimaryLightColor,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Container(child: createDrawerHeader(), color: kBackgroundColor),
                createDrawerBodyItem(
                    icon: Icons.home,
                    text: 'Home',
                    onTap: () => Navigator.push(
                          context,
                          new MaterialPageRoute(
                            builder: (BuildContext context) => new HomeScreen(),
                          ),
                        )),

                // createDrawerBodyItem(
                //     icon: Icons.shopping_bag_outlined, text: 'Dashboard', onTap: () {
                //   Navigator.push(context,
                //       MaterialPageRoute(builder: (context) => Report()));
                //   }
                // ),

                createDrawerBodyItem(
                    icon: Icons.account_circle,
                    text: 'Profile',
                    onTap: () => (prefs!.getString("id").toString() == 'null')
                        ? Navigator.push(
                            context,
                            new MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  new SignInScreen(),
                            ))
                        : Navigator.push(
                            context,
                            new MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  new ProfileScreen(),
                            ),
                          )),

                // createDrawerBodyItem(
                //     icon: Icons.event_note, text: 'Category', onTap: () => Navigator.push(
                //   context,
                //   new MaterialPageRoute(
                //     builder: (BuildContext context) => new CategoryScreen(parent: 0,cname:"Category",),
                //   ),
                // )),

                createDrawerBodyItem(
                    icon: Icons.shopping_cart,
                    text: 'Cart',
                    onTap: () => Navigator.push(
                          context,
                          new MaterialPageRoute(
                            builder: (BuildContext context) => new CartScreen(),
                          ),
                        )),
                // createDrawerBodyItem(
                //     icon: Icons.shopping_cart,
                //     text: 'My Order',
                //     onTap: () => Navigator.push(
                //       context,
                //       new MaterialPageRoute(
                //         builder: (BuildContext context) =>
                //         new CartScreen(),
                //       ),
                //     )),

                createDrawerBodyItem(
                    icon: Icons.account_box_outlined,
                    text: 'About Us',
                    onTap: () => Navigator.push(
                        context,
                        new MaterialPageRoute(
                          builder: (BuildContext context) =>
                              new ContentScreen(cmsId: "3451"),
                        ))),
                createDrawerBodyItem(
                    icon: Icons.assignment_turned_in_outlined,
                    text: 'Term & Condition',
                    onTap: () => Navigator.push(
                        context,
                        new MaterialPageRoute(
                          builder: (BuildContext context) =>
                              new ContentScreen(cmsId: "3449"),
                        ))),
                createDrawerBodyItem(
                    icon: Icons.assignment_turned_in_outlined,
                    text: 'Privacy Policy',
                    onTap: () => Navigator.push(
                        context,
                        new MaterialPageRoute(
                          builder: (BuildContext context) =>
                              new ContentScreen(cmsId: "3"),
                        ))),

                createDrawerBodyItem(
                    icon: Icons.contact_phone,
                    text: 'Contact Us',
                    onTap: () {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                          builder: (BuildContext context) =>
                              new ContactScreen(),
                        ),
                      );
                    }),

                (prefs!.getString("id").toString() == 'null')
                    ? createDrawerBodyItem(
                        icon: Icons.assignment_turned_in_outlined,
                        text: 'Login',
                        onTap: () => Navigator.push(
                            context,
                            new MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  new SignInScreen(),
                            )))
                    : createDrawerBodyItem(
                        icon: Icons.logout,
                        text: 'Logout',
                        onTap: () {
                          prefs?.clear();
                          Hive.box<ShoppingCartH>('ShopCartsH').clear();
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignInScreen(),
                            ),
                            (route) => false,
                          );
                        },
                      ),

                if (prefs!.getString("id").toString() != 'null')
                  createDrawerBodyItem(
                    icon: Icons.delete,
                    text: 'Account Delete',
                    onTap: () {
                      DeleteUser();
                    },
                  ),
              ],
            ),
          ),
        ));
  }

  void DeleteUser() {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext c) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            backgroundColor: Colors.white,
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Are you sure want to delete account?',
                    style: TextStyle(
                        color: kDarkTextColor, fontWeight: FontWeight.w400)),
                SizedBox(height: 15),
                Align(
                  alignment: AlignmentDirectional.bottomEnd,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      try {
                        print("token: ${prefs!.getString("token")}");
                        LoginApi.deleteURL({
                          "JWT": prefs!.getString("token").toString(),
                          "id": prefs!.getString("id")
                        }).then((ret) async {
                          debugPrint('DeleteUser ${ret}');
                          if (ret.success.toString() == "true") {
                            Fluttertoast.showToast(
                                msg: "${ret.message.toString()}");
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                              (route) => false,
                            );
                          } else {
                            await prefs?.clear();
                            Hive.box<ShoppingCartH>('ShopCartsH').clear();
                            Fluttertoast.showToast(
                                msg: "${ret.message.toString()}");
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignInScreen(),
                              ),
                              (route) => false,
                            );
                          }
                        });
                      } catch (e) {
                        rethrow;
                      }
                    },
                    child: Text('Delete',
                        style: TextStyle(
                            color: kTextColor, fontWeight: FontWeight.w700)),
                  ),
                ),
              ],
            ),
          );
        });
  }

  Widget createDrawerBodyItem(
      {required IconData icon,
      required String text,
      required GestureTapCallback onTap}) {
    return Container(
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(width: 1.0, color: kDarkTextColor))),
      child: ListTile(
        title: Row(
          children: <Widget>[
            Icon(
              icon,
              color: kTextColor,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(text,
                  style: TextStyle(
                      color: kTextColor, fontWeight: FontWeight.w400)),
            )
          ],
        ),
        onTap: onTap,
      ),
    );
  }

  Widget createDrawerHeader() {
    return DrawerHeader(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  color: kSecondaryColor),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child:
                    Image.asset("assets/images/IMLogo-Square.png", width: 70),
              )),
          Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
              child: (prefs!.getString("name").toString() != 'null')
                  ? Text(prefs!.getString("name").toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: kDarkTextColor,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                      ))
                  : Text(
                      "IL ilmercato",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: kDarkTextColor,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
        ]));
  }
}
