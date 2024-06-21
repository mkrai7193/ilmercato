import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ilmercato/Api/LoginApi.dart';
import 'package:ilmercato/components/default_button.dart';
import 'package:ilmercato/constants.dart';

import 'package:ilmercato/components/form_error.dart';
import 'package:ilmercato/screens/forgotP/ForgotScreen.dart';
import 'package:ilmercato/screens/sign_in/sign_in_screen.dart';

class ForgotForm extends StatefulWidget {
  const ForgotForm({Key? key}) : super(key: key);

  @override
  State<ForgotForm> createState() => _ForgotFormState();
}

class _ForgotFormState extends State<ForgotForm> {
  var emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final List<String?> errors = [];

  String? email;

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const SizedBox(height: 30),
          buildEmailFormField(),
          const SizedBox(height: 20),
          FormError(errors: errors),
          const SizedBox(height: 20),
          DefaultButton(
            text: "CONTINUE",
            press: () {
              if (_formKey.currentState!.validate()) {
                sendForgotApi();
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(color: Colors.black),
      controller: emailController,
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
          addError(error: kEmailNullError);
          return kEmailNullError;
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return kInvalidEmailError;
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
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

  void sendForgotApi() {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext c) {
          return Container(
              alignment: AlignmentDirectional.center,
              child: const CircularProgressIndicator.adaptive());
        });
    try {
      var res = LoginApi.forgotPasswordApi(
          {"email": emailController.text.toString()});
      res.then((value) async {

        if (value.success.toString() == "true") {

          Fluttertoast.showToast(msg: value.message.toString());
          Navigator.pushNamed(context, SignInScreen.routeName);
        } else {

         Fluttertoast.showToast(msg: value.data!.message.toString());
          Navigator.pushNamed(context, ForgotScreen.routeName);
        }
      });
    } catch (e) {
      rethrow;
    }
  }
}
