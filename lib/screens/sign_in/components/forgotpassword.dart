
import 'package:flutter/material.dart';
import 'package:ilmercato/screens/forgotP/ForgotScreen.dart';
import '../../../constants.dart';

class Forgotpassword extends StatelessWidget {
  const Forgotpassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
       SizedBox(height: 20,),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, ForgotScreen.routeName);
          },
          child: Text(
            "Forgot Password",
            style: listText,
          ),
        ),

      ],
    );
  }
}
