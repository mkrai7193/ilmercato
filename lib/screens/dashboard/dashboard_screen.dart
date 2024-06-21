import 'package:flutter/material.dart';
import 'package:ilmercato/constants.dart';
import 'package:ilmercato/screens/dashboard/components/report.dart';
import 'package:ilmercato/size_config.dart';
import 'components/body.dart';

class DashboardScreen extends StatelessWidget {
  static String routeName = "/dashboard";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: kSecondaryColor),

          title:Text("My Order",style: listTextWhite,),
        backgroundColor: kDarkTextColor,
      ),

      body: Report(),
    );
  }
}
