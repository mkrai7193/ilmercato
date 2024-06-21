import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ilmercato/constants.dart';
import 'package:ilmercato/navigationDrawer.dart';
import 'package:ilmercato/widget/AppBarWidget.dart';
import 'package:ilmercato/widget/MenuWidget.dart';
import 'package:url_launcher/url_launcher.dart';
import 'components/body.dart';
import 'package:ilmercato/widget/backWidget.dart';

class ContactScreen extends StatefulWidget {
  static String routeName = "/contact";

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  final GlobalKey<ScaffoldState> sKey = GlobalKey();
  openContactWhatApp() async {
    var whatsapp = "97366300488";
    var whatsappURl_android = "https://wa.me/$whatsapp?text=hello";
    var whatappURL_ios = "https://wa.me/$whatsapp?text=hello";
    if (Platform.isIOS) {
      // for iOS phone only
      if (await canLaunch(whatappURL_ios)) {
        await launch(whatappURL_ios, forceSafariVC: false);
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: new Text("whatsApp no installed",style: smallListTextWhite,)));
      }
    } else {
      // android , web
      if (await canLaunch(whatsappURl_android)) {
        await launch(whatsappURl_android);
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: new Text("whatsApp no installed",style: smallListTextWhite,)));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: sKey,
        backgroundColor: kBackgroundColor,
        appBar: PreferredSize(
          preferredSize: Size(80, 60),
          child: commonAppBarWidget(context,"",sKey),
        ),
        drawerEnableOpenDragGesture: false,
        drawer:NavigationDrawer1(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Container(
            //     height: 50,
            //     child:   // Container(
                      //   height: 50,
                      //   child: MenuCard()),
            SizedBox(height: 10,),
            BackButton1(),
            Expanded(
                flex: 1,
                child: Body()),
          ],
        ),
        floatingActionButton:
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          FloatingActionButton(
            isExtended: true,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset("assets/images/whatsapp.png"),
            ),
            backgroundColor: Colors.black,
            onPressed: () => openContactWhatApp(),
          ),
          SizedBox(
            height: 10,
          ),
          // FloatingActionButton(
          //   isExtended: true,
          //   child: Icon(Icons.location_on),
          //   backgroundColor: Colors.black,
          //   onPressed: () => MapsLauncher.launchQuery(
          //       "Kanpur, Uttar Pradesh, 208001"),
          // ),
        ]));
  }
}
