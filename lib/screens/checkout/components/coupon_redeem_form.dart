import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ilmercato/Api/LoginApi.dart';
import 'package:ilmercato/components/default_button.dart';
import 'package:ilmercato/constants.dart';
import 'package:ilmercato/helper/keyboard.dart';
import 'package:ilmercato/main.dart';
import 'package:ilmercato/screens/cart/model/boxes.dart';
import 'package:ilmercato/screens/checkout/checkout.dart';

class CouponRedeemForm extends StatefulWidget {
  const CouponRedeemForm({super.key});

  @override
  State<CouponRedeemForm> createState() => _CouponRedeemState();
}

class _CouponRedeemState extends State<CouponRedeemForm> {

  var codeController = TextEditingController();
  final List<String?> errors = [];

  final _formKey = GlobalKey<FormState>();
  String? code;

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0,top: 10,bottom: 20,right: 15.0),
            child: buildCodeFormField(),
          ),
          DefaultButton(
            text: "Redeem",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // if all are valid then go to success screen
                 KeyboardUtil.hideKeyboard(context);
                couponRedeem();
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildCodeFormField() {
    return TextFormField(
      style: TextStyle(color: Colors.black),
      controller: codeController,
      onSaved: (newValue) => code = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kCouponNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          //   addError(error: kNameNullError);
          return kCouponNullError;
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Code",
        hintText: "Enter Coupon Code",
        labelStyle: TextStyle(color: Colors.black),
        hintStyle: TextStyle(color: Colors.black),
        fillColor: Colors.black,
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon:  Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Icon(Icons.account_circle_outlined,color: kDarkTextColor,)
        ),
      ),
    );
  }


  void couponRedeem() {
    double discount =0.000;

    DateTime today = DateTime.now();

    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext c) {
          return Container(
              alignment: AlignmentDirectional.center,
              child: const CircularProgressIndicator.adaptive());
        });
    try {
      LoginApi.CouponRedeem(codeController.text.trim()).then((ret1) {

       if (ret1[0].id.toString() !=0) {
          if(ret1[0].dateExpires !=null ) {
            if (ret1[0].discountType.toString() == "fixed_product" &&
                  ShopCartsH().finalAmount <= double.parse(ret1[0].minimumAmount.toString()) &&
                  today.isBefore(DateTime.parse(ret1[0].dateExpires.toString()))) {
              print("hello");
              discount = double.parse(ret1[0].amount.toString());
       prefs!.setDouble("discount", discount);
            } else if (ret1[0].discountType.toString() == "percent" &&
                  ShopCartsH().finalAmount <=double.parse(ret1[0].minimumAmount.toString()) &&
                      today.isBefore(DateTime.parse(ret1[0].dateExpires.toString())))
            {
              print("hello1");
              discount = double.parse(ret1[0].amount.toString());
              prefs!.setDouble("discount", discount);
            } else {
              Fluttertoast.showToast(msg: "Code Not Applicable");
              print("hello2");
            }
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Checkout(),
                )
            );
          }else{
            if (ret1[0].discountType.toString() == "fixed_product" &&
                ShopCartsH().finalAmount <= double.parse(ret1[0].minimumAmount.toString())) {
              print("hello11");
              discount = double.parse(ret1[0].amount.toString());
              prefs!.setDouble("discount", discount);
            } else if (ret1[0].discountType.toString() == "percent" &&
                ShopCartsH().finalAmount <=double.parse(ret1[0].minimumAmount.toString()) ) {
              discount = double.parse(ret1[0].amount.toString());
              prefs!.setDouble("discount", discount);
              print("hello12");
            } else {
              Fluttertoast.showToast(msg: "Code Not Applicable");
              print("hello13");
            }
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Checkout(),
                )
            );
          }
        } else {
          Fluttertoast.showToast(msg: "Code Not Found");
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Checkout(),
              )
          );
        }
      });
    } catch (e) {
      rethrow;
    }
  }

}
