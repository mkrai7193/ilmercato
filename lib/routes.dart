import 'package:flutter/widgets.dart';
import 'package:ilmercato/screens/Splash.dart';
import 'package:ilmercato/screens/cart/cart_screen.dart';
import 'package:ilmercato/screens/changepassword/ChangePasswordScreen.dart';
import 'package:ilmercato/screens/dashboard/dashboard_screen.dart';
import 'package:ilmercato/screens/details/details_screen.dart';
import 'package:ilmercato/screens/forgotP/ForgotScreen.dart';
import 'package:ilmercato/screens/home/home_screen.dart';
import 'package:ilmercato/screens/profile/profile_screen.dart';
import 'package:ilmercato/screens/sign_in/sign_in_screen.dart';
import 'package:ilmercato/screens/sign_up/sign_up_screen.dart';
import 'package:ilmercato/screens/splash/splash_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  Splash.routeName: (context) => Splash(),
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  ForgotScreen.routeName: (context) => ForgotScreen(),
  ChangePasswordScreen.routeName : (context) => ChangePasswordScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
 // CategoryScreen.routeName: (context) => CategoryScreen(parent: 0, cname: ""),
  ProductDetailsScreen.routeName: (context) => ProductDetailsScreen(
        pid: "",
    pname:""
      ),
  CartScreen.routeName: (context) => CartScreen(),

  ProfileScreen.routeName: (context) => ProfileScreen(),
  DashboardScreen.routeName: (context) => DashboardScreen(),
  DashboardScreen.routeName: (context) => DashboardScreen(),
};
