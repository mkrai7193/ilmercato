import 'package:flutter/material.dart';
import 'package:ilmercato/constants.dart';
import 'package:ilmercato/navigationDrawer.dart';
import 'package:ilmercato/size_config.dart';
import 'package:ilmercato/widget/AppBarWidget.dart';
import 'package:ilmercato/widget/MenuWidget.dart';
import 'components/profile_form.dart';

class EditProfile extends StatelessWidget {
  static String routeName = "/editProfile";

  EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: kSecondaryColor),
        title: Text(
          "Edit Profile",
          style: listTextWhite,
        ),
        backgroundColor: kDarkTextColor,
      ),
      // appBar: PreferredSize(
      //   preferredSize: Size(80, 60),
      //   child: commonAppBarWidget(context, "",sKey),
      // ),
      // drawerEnableOpenDragGesture: false,
      // drawer:NavigationDrawer1(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container(
            //     height: 50,
            //     child: MenuCard()),
            // SizedBox(height: 10,),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 20),
            //   child: GestureDetector(
            //       onTap: (){
            //         Navigator.pop(context);
            //       },
            //       child:Container(
            //         height: 30,
            //         child: Align(
            //             alignment: Alignment.centerLeft,
            //             child: Image.asset("assets/vector/Arrow.png")),
            //       )
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: ProfileForm(),
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.06),
          ],
        ),
      ),
    );
  }
}
