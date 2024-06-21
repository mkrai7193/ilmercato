import 'package:flutter/material.dart';
import 'package:ilmercato/Api/LoginApi.dart';
import 'package:ilmercato/components/default_button.dart';
import 'package:ilmercato/constants.dart';
import 'package:ilmercato/screens/coupon/model/CouponModel.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_share_me/flutter_share_me.dart';

enum Share { share_system }

class Coupon extends StatefulWidget {
  const Coupon({Key? key}) : super(key: key);

  @override
  _CouponState createState() => _CouponState();
}

class _CouponState extends State<Coupon> {
  launchLinkURL(link) async {
    final String downloadLinkUrl = link;

    final String encodedURl = Uri.encodeFull(downloadLinkUrl);

    if (await canLaunch(encodedURl)) {
      await launch(encodedURl);
    } else {
      print('Could not launch $encodedURl');
      throw 'Could not launch $encodedURl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<CouponModel>>(
        future: LoginApi.couponApi(0),
        builder: (context, snapshot) {
          // Checking if future is resolved or not
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              return ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemCount: snapshot.data!.length,
                  separatorBuilder: (_, index) => const SizedBox(
                        width: 10,
                      ),
                  itemBuilder: (context, int index) {
                    return Container(
                        decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(color: kTextColor, width: 1.0)),
                        ),
                        child: ListTile(
                          leading: Image.asset(
                            "assets/vector/rewards.png",
                          ),
                          title: Text(
                            "${snapshot.data![index].code}",
                            style: TextStyle(
                                color: kDarkTextColor, fontSize: 18,fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "${snapshot.data![index].description}",

                            style: TextStyle(
                                color: kDarkTextColor, fontSize: 14),
                          ),
                          trailing: SmallDefaultButton(
                            text:  "Copy",
                            press: (){},
                          ),
                          onTap: () {},
                        ));
                  });
            } else if (snapshot.hasError) {
              return Container(
                  alignment: AlignmentDirectional.center,
                  child: Text("Technical Issue! Please Try Again"));
            }
          }
          return Container(
              alignment: AlignmentDirectional.center,
              child: const CircularProgressIndicator.adaptive());
        });
  }

  Future<void> onButtonTap(Share share, var url1) async {
    //   String msg = 'hello ';
    String url = url1;

    String? response;
    final FlutterShareMe flutterShareMe = FlutterShareMe();
    switch (share) {
      case Share.share_system:
        response = await flutterShareMe.shareToSystem(msg: url);
        break;
    }
    debugPrint(response);
  }
}
