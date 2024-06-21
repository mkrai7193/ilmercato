import 'package:flutter/material.dart';
import 'package:ilmercato/screens/splash/components/body.dart';
import 'package:ilmercato/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/term";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
