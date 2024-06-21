import 'package:flutter/material.dart';
import 'package:ilmercato/screens/sign_up/sign_up_screen.dart';
import '../../../constants.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 20),
        Text(
          "Don’t have an account yet? ",
          style: largeListTextWhite,
        ),
        SizedBox(height: 20),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
          child: Text(
            "SIGN UP NOW",
            style: listTextWhite,
          ),
        ),

      ],
    );
  }
}
