import 'package:flutter/material.dart';
import 'package:ilmercato/constants.dart';
import 'package:ilmercato/size_config.dart';
import 'components/sign_form.dart';

import 'components/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";

  // Future<bool>? _onBackPress(){
  //   return showDialog(
  //       context: context,
  //       builder: (context) =>
  //           AlertDialog(title: Text('Are you sure you want to quit?'), actions: <Widget>[
  //             RaisedButton(
  //                 child: Text('sign out'),
  //                 onPressed: () => Navigator.of(context).pop(true)),
  //             RaisedButton(
  //                 child: Text('cancel'),
  //                 onPressed: () => Navigator.of(context).pop(false)),
  //           ]));
  // }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
