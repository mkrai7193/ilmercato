import 'package:flutter/material.dart';
import 'package:ilmercato/size_config.dart';

const kPhotoLink = "";
const kWhatsAppNo = "+919560995542";

const kBackgroundColor = Color(0xFFEEEEE2);
const kBackground2Color = Color(0xFFCEC9B6);
const kPrimaryColor = Color(0xFFEEEEE2);
const kPrimaryDarkColor = Colors.black;
const kPrimaryLightColor = Colors.white;
const kAppBarColor = Color(0xFF3C2619);
const kAppBarShadowColor = Color(0xFF2f2859);
const kAppBarIconColor = Colors.white;
const kAppBarActiveIconColor = Colors.white;
const kButtonBgColor = Color(0xFFB78E67);
const kBottomBgColor = Color(0xFFB78E67);
const kTextFieldBgColor = Color(0xFFf7f8f9);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFecc373), Color(0xFFcc9933)],
);

 Color kListColor = Color(0xFFCEC9B6).withOpacity(0.80);


const kSecondaryColor = Colors.white;
const kTextColor = Color(0xFF814508);
const kExtraTextColor = Color(0xFF757575);
const kDarkTextColor = Color(0xFF000000);
const kDescriptionTextColor = Color(0xFF9B9B9B);

const kDefaultPadding8 = 8.0;

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  color: kTextColor,
  height: 1.5,
);

final headingStyleWhite = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  color: Colors.white,
  height: 1.5,
);
final headingStyleBlack = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  color: kDarkTextColor,
  height: 1.5,
);

final headingRate = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.bold,
  color: kTextColor,
  height: 1.5,
);


final mainHeadline = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
  color: kDarkTextColor,
  height: 1.5,
);



final listTextLight = TextStyle(
  fontSize: 15,
  color: kDescriptionTextColor,
  fontWeight: FontWeight.w600,
  height: 1.5,
);

final listText = TextStyle(
  fontSize: 15,
  color: kDarkTextColor,
  fontWeight: FontWeight.w600,
  height: 1.5,
);

final listTextWhite = TextStyle(
  fontSize: 15,
  color: kSecondaryColor,
  fontWeight: FontWeight.w600,
  height: 1.5,
);

final listTextColor = TextStyle(
  fontSize: 15,
  color: kTextColor,
  fontWeight: FontWeight.w600,
  height: 1.5,
);


final largeListTextBlack = TextStyle(
  fontSize: 15,
  color: kDarkTextColor,
  fontWeight: FontWeight.w400,
  height: 1.5,
);

final largeListTextWhite = TextStyle(
  fontSize: 15,
  color: kSecondaryColor,
  fontWeight: FontWeight.w400,
  height: 1.5,
);
final largeListText = TextStyle(
  fontSize: 15,
  color: kTextColor,
  fontWeight: FontWeight.w400,
  height: 1.5,
);

final smallListTextBlack1 = TextStyle(
  fontSize: 13,
  color: Colors.black,
  fontWeight: FontWeight.w400,
  height: 1.5,
);

final smallListTextBlackBold = TextStyle(
  fontSize: 13,
  color: Colors.black,
  fontWeight: FontWeight.w600,
  height: 1.5,
);

final smallListTextBlack = TextStyle(
  fontSize: 13,
  color: kDarkTextColor,
  fontWeight: FontWeight.w400,
  height: 1.5,
);
final smallListTextWhite = TextStyle(
  fontSize: 13,
  color: kSecondaryColor,
  fontWeight: FontWeight.w400,
  height: 1.5,
);

final smallListText = TextStyle(
  fontSize: 13,
  color: kTextColor,
  fontWeight: FontWeight.w400,
  height: 1.5,
);

final paddingStyle = EdgeInsets.only(top: 8, left: 8, right: 8);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
final RegExp mobileValidatorRegExp = RegExp(r"(^(?:[+0]7)?[0-9]{11}$)");
final RegExp pinCodeValidatorRegExp = RegExp(r"(^(\d{4}|^\d{6})$)");
const String kEmailNullError = "Please Enter your Email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kInvalidMobileError = "Please Enter Country Code with Mobile";
const String kInvalidPinCodeError = "Please Enter Valid Pincode";
const String kPassNullError = "Please Enter your Password";
const String kShortPassError = "Password is too Short Min 4 digit";
const String kMatchPassError = "Passwords don't Match";
const String kProductNameNullError = "Please Enter your Product Name";
const String kNameNullError = "Please Enter your Name";
const String kPhoneNumberNullError = "Please Enter your Phone Number";
const String kPinCodeNullError = "Please Enter your Pincode";
const String kShortPinCodeError = "PinCode is too Short";
const String kAddressNullError = "Please Enter your Address";
const String kCityNullError = "Please Enter your City";
const String kStateNullError = "Please Enter your State";
const String kCountryNullError = "Please Enter your Country";
const String kMessageNullError = "Please Enter your Message";
const String kTermNullError = "Please Agree all Term & Condition";
const String kCouponNullError = "Please Enter Coupon Code";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}
