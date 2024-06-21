import 'package:flutter/material.dart';
import 'package:ilmercato/constants.dart';
import 'package:ilmercato/screens/sign_up/components/no_account_text.dart';
import 'sign_up_form.dart';
import 'package:ilmercato/widget/backWidget.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Image.asset(
            "assets/images/bg.png",
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
            top: 40,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 75),
              child: Image.asset(
                "assets/images/Orig-IM-Logo-rect.png",
                fit: BoxFit.cover,
              ),
            )),
        Positioned(
          bottom: 150,
          width: MediaQuery.of(context).size.width,
          child: Container(
            height: 380,
            width: double.infinity,
            decoration: BoxDecoration(
              color: kPrimaryLightColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            padding: const EdgeInsets.only(right: 20.0, left: 20.0, top: 2),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  BackButton1(),
                  Text(
                    "SIGN UP",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: kDarkTextColor,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SignUpForm(),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
            bottom: -20,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 170,
              child: Stack(children: [
                Image.asset(
                  "assets/images/3.png",
                  width: 400,
                  height: 165,
                  fit: BoxFit.fill,
                ),
                Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/3.png',
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      NoAccountText(),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ]),
            ))
      ],
    );
  }
}
