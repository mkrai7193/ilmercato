import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class LargeDefaultButton extends StatelessWidget {
  const LargeDefaultButton({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);
  final String? text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      height:56,
      child: TextButton(
        style: TextButton.styleFrom(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          foregroundColor: kSecondaryColor,
          backgroundColor: kButtonBgColor,
        ),
        onPressed: press as void Function()?,
        child: Text(
          text!,
          style: TextStyle(
            fontSize:17,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);
  final String? text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height:56,
      child: TextButton(
        style: TextButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          foregroundColor: kSecondaryColor,
          backgroundColor: kButtonBgColor,
        ),
        onPressed: press as void Function()?,
        child: Text(
          text!,
          style: TextStyle(
            fontSize: 17,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}



class SmallDefaultButton extends StatelessWidget {
  const SmallDefaultButton({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);
  final String? text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height:50,
      child: TextButton(
        style: TextButton.styleFrom(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          foregroundColor: kSecondaryColor,
          backgroundColor: kButtonBgColor,
        ),
        onPressed: press as void Function()?,
        child: Text(
          text!,
          style: TextStyle(
            fontSize:15,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class SmallColorDefaultButton extends StatelessWidget {
  const SmallColorDefaultButton({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);
  final String? text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height:40,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(width: 1,color: kTextColor),
            borderRadius: BorderRadius.circular(20)
        ),
        child: TextButton(
          style: TextButton.styleFrom(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            foregroundColor: kTextColor,
            backgroundColor: kBackgroundColor,

          ),
          onPressed: press as void Function()?,
          child: Text(
            text!,
            style: TextStyle(
              fontSize: 15,
              color: kTextColor,
            ),
          ),
        ),
      ),
    );
  }
}



class MediumColorDefaultButton extends StatelessWidget {
  const MediumColorDefaultButton({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);
  final String? text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height:56,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1,color: kTextColor),
          borderRadius: BorderRadius.circular(20)
        ),
        child: TextButton(
          style: TextButton.styleFrom(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            foregroundColor: kTextColor,
            backgroundColor: kBackgroundColor,

          ),
          onPressed: press as void Function()?,
          child: Text(
            text!,
            style: TextStyle(
              fontSize: 16,
              color: kTextColor,
            ),
          ),
        ),
      ),
    );
  }
}

class MediumDefaultButton extends StatelessWidget {
  const MediumDefaultButton({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);
  final String? text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height:56,
      child: TextButton(
        style: TextButton.styleFrom(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          foregroundColor: kSecondaryColor,
          backgroundColor: kButtonBgColor,
        ),
        onPressed: press as void Function()?,
        child: Text(
          text!,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
