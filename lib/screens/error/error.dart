import 'package:flutter/material.dart';
import 'package:ilmercato/components/coustom_bottom_nav_bar.dart';
import 'package:ilmercato/components/default_button.dart';
import 'package:ilmercato/constants.dart';
import 'package:ilmercato/enums.dart';
import 'package:ilmercato/screens/home/home_screen.dart';
import 'package:ilmercato/size_config.dart';
import 'package:ilmercato/widget/AppBarWidget.dart';
import 'package:ilmercato/widget/MenuWidget.dart';

class ErrorScreen extends StatefulWidget {
  const ErrorScreen();

  @override
  State<ErrorScreen> createState() => _ErrorScreenState();
}

class _ErrorScreenState extends State<ErrorScreen> {
  final GlobalKey<ScaffoldState> sKey = GlobalKey();
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MenuCard(),
            SizedBox(height: 20,),

            Icon(Icons.task_alt,size: 100, color: kTextColor,),
            SizedBox(height: 10,),
            Text("Error !",style: headingRate,),
            SizedBox(height: 10,),
            Text("Your order has not Completed .Please Try Again",style: smallListTextBlack,),
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
      bottomNavigationBar:
      CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}

