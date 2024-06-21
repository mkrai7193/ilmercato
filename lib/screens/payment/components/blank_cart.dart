import 'package:ilmercato/size_config.dart';
import 'package:flutter/material.dart';

class BlankCard extends StatelessWidget {
  const BlankCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: getProportionateScreenWidth(15),
        horizontal: getProportionateScreenWidth(30),
      ),
      // height: 174,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          )
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              Text("You haven't started an order yet",style: TextStyle(fontSize:20,fontWeight:FontWeight.w500  ),),
              SizedBox(height: getProportionateScreenHeight(10)),
            Text("...",style: TextStyle(fontSize:30,fontWeight:FontWeight.w700  ),),
            SizedBox(height: getProportionateScreenHeight(10)),
              TextButton(onPressed: (){  }, child: Text("TAP THE MENU TO START ORDERING",style: TextStyle(fontSize:12,fontWeight:FontWeight.w500,color: Colors.black  )))
          ],
        ),
      ),
    );
  }
}
