import 'package:flutter/material.dart';
import 'package:ilmercato/components/default_button.dart';
import 'package:ilmercato/components/form_error.dart';
import 'package:ilmercato/constants.dart';
import 'package:ilmercato/main.dart';
import 'package:ilmercato/screens/checkout/model/deliveryModel.dart';
import 'package:ilmercato/screens/confirmdetail/confirmdetail.dart';

class ShippingForm extends StatefulWidget {
  final String id;
  final DeliveryModel deliveryModel;

  const ShippingForm({Key? key, required this.id,required this.deliveryModel}) : super(key: key);
  @override
  _ShippingFormState createState() => _ShippingFormState();
}

class _ShippingFormState extends State<ShippingForm> {
  var nameController = TextEditingController();
  var mobileController = TextEditingController();
  var emailController = TextEditingController();
  var addressController = TextEditingController();
  var cityController = TextEditingController();
  var stateController = TextEditingController();
  var countryController = TextEditingController();
  var pinCodeController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final List<String?> errors = [];
  String? name;
  String? email;
  String? mobile;
  String? address;
  String? city;
  String? state;
  String? country;
  String? pinCode;



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
        children: [
          SizedBox(height: 20),
          buildNameFormField(),
          SizedBox(height: 20),
          buildMobileFormField(),
          SizedBox(height: 20),
          buildEmailFormField(),
          SizedBox(height: 20),
          buildAddressFormField(),
          SizedBox(height: 20),
          buildCityFormField(),
          SizedBox(height: 20),
          buildCountryFormField(),
          FormError(errors: errors),
          SizedBox(height: 20),
          DefaultButton(
            text: "PLACE ORDER",
            press: () {
              if (_formKey.currentState!.validate()) {
                shipping();
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      controller: addressController..text=(widget.id.toString() !='0')?widget.deliveryModel.shipping1!.address1.toString():"",
      style: TextStyle(color: Colors.black),
      onSaved: (newValue) => address = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kAddressNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
    //      addError(error: kAddressNullError);
         return kAddressNullError;
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Address",
        hintText: "Enter your Address",
        labelStyle: TextStyle(color: kDarkTextColor, fontSize: 18),
        hintStyle: TextStyle(color: Colors.black),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.location_history)
      ),
    );
  }

  TextFormField buildStateFormField() {
    return TextFormField(
      controller: stateController..text=(widget.id.toString() !='0')?widget.deliveryModel.shipping1!.state.toString():"",
      style: TextStyle(color: Colors.black),
      onSaved: (newValue) => address = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kStateNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
      //    addError(error: kStateNullError);
          return kStateNullError;
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "State",
        hintText: "Enter your State",
        hintStyle: TextStyle(color: Colors.black),
        labelStyle: TextStyle(color: kDarkTextColor, fontSize: 18),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.location_history)
      ),
    );
  }

  TextFormField buildCityFormField() {
    return TextFormField(
      controller: cityController..text=(widget.id.toString() !='0')? widget.deliveryModel.shipping1!.city.toString():"",
      style: TextStyle(color: Colors.black),
      onSaved: (newValue) => city = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kCityNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
      //    addError(error: kCityNullError);
          return kCityNullError;
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "City",
        hintText: "Enter your City",
        hintStyle: TextStyle(color: Colors.black),
        labelStyle: TextStyle(color: kDarkTextColor, fontSize: 18),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.location_history)
      ),
    );
  }

  TextFormField buildCountryFormField() {
    return TextFormField(
      controller: countryController..text=(widget.id.toString() !='0')? widget.deliveryModel.shipping1!.country.toString() :"",
      style: TextStyle(color: Colors.black),
      onSaved: (newValue) => country = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kCountryNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
        //  addError(error: kCountryNullError);
          return kCountryNullError;
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Country",
        hintText: "Enter your Country",
        labelStyle: TextStyle(color: kDarkTextColor, fontSize: 18),
        hintStyle: TextStyle(color: Colors.black),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.location_history)
      ),
    );
  }

  TextFormField buildMobileFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      controller: mobileController..text=(widget.id.toString() !='0')?widget.deliveryModel.billing1!.phone.toString():"973",
      style: TextStyle(color: Colors.black),
      onSaved: (newValue) => mobile = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPhoneNumberNullError);
        } else if (mobileValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidMobileError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
       //   addError(error: kPhoneNumberNullError);
          return kPhoneNumberNullError;
        } else if (!mobileValidatorRegExp.hasMatch(value)) {
       //   addError(error: kInvalidMobileError);
          return kInvalidMobileError;
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Mobile",
        hintText: "Enter your Mobile",
        labelStyle: TextStyle(color: Colors.black),
        hintStyle: TextStyle(color: Colors.black),
        fillColor: Colors.black,
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.phone)
      ),
    );
  }

  TextFormField buildNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      style: TextStyle(color: Colors.black),
      controller: nameController..text=(widget.id.toString() !='0')? "${widget.deliveryModel.shipping1!.firstName.toString()}":"",
      onSaved: (newValue) => name = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNameNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
      //    addError(error: kNameNullError);
          return kNameNullError;
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Name",
        hintText: "Enter your Name",
        labelStyle: TextStyle(color: Colors.black),
        hintStyle: TextStyle(color: Colors.black),
        fillColor: Colors.black,
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.account_circle_outlined)
      ),
    );
  }

  TextFormField buildPinCodeFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      controller: pinCodeController..text=(widget.id.toString() !='0')?"${widget.deliveryModel.shipping1!.postcode.toString()}":"",
      style: TextStyle(color: Colors.black),
      onSaved: (newValue) => pinCode = newValue,
      // onChanged: (value) {
      //   if (value.isNotEmpty) {
      //     removeError(error: kPinCodeNullError);
      //   } else if (pinCodeValidatorRegExp.hasMatch(value)) {
      //     removeError(error: kInvalidPinCodeError);
      //   }
      //   return null;
      // },
      // validator: (value) {
      //   if (value!.isEmpty) {
      //  //   addError(error: kPinCodeNullError);
      //    return kPinCodeNullError;
      //   } else if (!pinCodeValidatorRegExp.hasMatch(value)) {
      //    // addError(error: kInvalidPinCodeError);
      //     return kInvalidPinCodeError;
      //   }
      //   return null;
      // },
      decoration: InputDecoration(
        labelText: "Zip Code",
        hintText: "Enter your Zip Code",
        labelStyle: TextStyle(color: Colors.black),
        hintStyle: TextStyle(color: Colors.black),
        fillColor: Colors.black,
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.location_history)
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(color: Colors.black),
      controller: emailController..text=(widget.id.toString() !='0')?"${widget.deliveryModel.billing1!.email.toString()}":"${prefs!.getString('email').toString()}",
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
        //  addError(error: kEmailNullError);
          return "$kEmailNullError";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
        //  addError(error: kInvalidEmailError);
          return "$kInvalidEmailError";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email Id",
        hintText: "Enter your Email",
        labelStyle: TextStyle(color: Colors.black),
        hintStyle: TextStyle(color: Colors.black),
        fillColor: Colors.black,
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.mail)
      ),
    );
  }

  void shipping() {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext c) {
          return Container(
              alignment: AlignmentDirectional.center,
              child: const CircularProgressIndicator.adaptive());
        });
    DeliveryModel model = DeliveryModel(
      firstName:nameController.text.trim(),
      username: nameController.text.trim(),
      billing1: Billing1(
        firstName: nameController.text.toString(),
        phone: mobileController.text.toString(),
        address1: addressController.text.toString(),
        city: cityController.text.toString(),
        state: "",
        country: countryController.text.toString(),
        postcode: "",
        email: emailController.text.toString(),
      ),
        shipping1: Shipping1(
          firstName: nameController.text.toString(),
          address1: addressController.text.toString(),
          city: cityController.text.toString(),
          state: "",
          country: countryController.text.toString(),
          postcode: "",
        )
    );

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ConfirmDetail(deliveryModel: model),
      ),
    );
  }
}
