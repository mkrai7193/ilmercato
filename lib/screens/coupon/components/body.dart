import 'package:flutter/material.dart';
import 'package:ilmercato/widget/MenuWidget.dart';
import 'coupon.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MenuCard(),
          SizedBox(height: 20,),
          Coupon(),
        ],
      ),
    );
  }
}
