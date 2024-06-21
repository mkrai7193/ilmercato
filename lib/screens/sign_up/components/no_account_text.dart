
import 'package:flutter/material.dart';
import 'package:ilmercato/screens/sign_in/sign_in_screen.dart';
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
          "Already have an account? ",
          style: largeListTextWhite,
        ),
        SizedBox(height: 20),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignInScreen.routeName),
          child: Text(
            "SIGN IN NOW",
            style: listTextWhite,
          ),
        ),
      ],
    );
  }
}
