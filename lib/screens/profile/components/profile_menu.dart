import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
    required this.icon,
    this.press,
  }) : super(key: key);

  final String text, icon;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: TextButton(
        style: TextButton.styleFrom(
          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor:kPrimaryColor,
        ),
        onPressed: press,
        child: Row(
          children: [
            Image.asset(
              icon,
              width: 25,
            ),
            SizedBox(width: 20),
            Expanded(child: Text(text,style:largeListText)),
            Icon(Icons.arrow_forward_ios,color: kTextColor),
          ],
        ),
      ),
    );
  }
}


class ProfileMenu1 extends StatelessWidget {
  const ProfileMenu1({
    Key? key,
    required this.text,
    required this.icon,
    this.press,
  }) : super(key: key);

  final String text, icon;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: TextButton(
        style: TextButton.styleFrom(
          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor:kPrimaryColor,
        ),
        onPressed: press,
        child: Row(
          children: [
            Image.asset(
              icon,
              width: 25,
            ),
            SizedBox(width: 20),
            Expanded(child: Text(text,style:largeListTextBlack)),
            Icon(Icons.arrow_forward_ios,color: kTextColor),
          ],
        ),
      ),
    );
  }
}
