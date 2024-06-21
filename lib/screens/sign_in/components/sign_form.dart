import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ilmercato/Api/LoginApi.dart';
import 'package:ilmercato/components/form_error.dart';
import 'package:ilmercato/helper/keyboard.dart';
import 'package:ilmercato/main.dart';
import 'package:ilmercato/screens/home/home_screen.dart';
import 'package:ilmercato/screens/sign_in/components/forgotpassword.dart';
import 'package:ilmercato/screens/sign_in/sign_in_screen.dart';
import '../../../components/default_button.dart';
import '../../../constants.dart';


class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  var emailController = TextEditingController();
  var passController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  final List<String?> errors = [];
  bool _passwordVisible = false;

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
  void initState() {
    // TODO: implement initState
    _passwordVisible = false;
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: 20),
          buildPasswordFormField(),
          FormError(errors: errors),
          SizedBox(height: 10),
          Forgotpassword(),
          SizedBox(height: 10),
          DefaultButton(
            text: "LOGIN",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // if all are valid then go to success screen
                KeyboardUtil.hideKeyboard(context);
                signIn();
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
      style: TextStyle(color: kDarkTextColor),
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
        hintText: "Enter your Email Id",
        labelStyle: TextStyle(color: kDarkTextColor),
        hintStyle: TextStyle(color: kDarkTextColor),
        fillColor: kDarkTextColor,
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 12),
          child:  Icon(Icons.mail)
        ),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: !_passwordVisible,
      style: TextStyle(color: kDarkTextColor),
      controller: passController,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >=4 ) {
          removeError(error: kShortPassError);
        }
        password = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
      //    addError(error: kPassNullError);
          return "$kPassNullError";
        } else if (value.length < 4) {
       //   addError(error: kShortPassError);
          return "$kShortPassError";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your Password",
        labelStyle: TextStyle(color: kDarkTextColor),
        hintStyle: TextStyle(color: kDarkTextColor),
        fillColor: kDarkTextColor,

        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon:  Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Icon(Icons.lock)
        ),
        suffixIcon: IconButton(
          icon: Icon(
            // Based on passwordVisible state choose the icon
            _passwordVisible ? Icons.visibility : Icons.visibility_off,
            color: kDarkTextColor,
          ),
          onPressed: () {
            // Update the state i.e. toogle the state of passwordVisible variable
            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },
        ),
      ),
    );
  }

  void signIn() {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext c) {
          return Container(
              alignment: AlignmentDirectional.center,
              child: const CircularProgressIndicator.adaptive());
        });
    try {
      LoginApi.tokenURL({
        "email": emailController.text,
        "password": passController.text
      }).then((ret1) {
        print("JWT: ${ret1.data!.jwt.toString()}");
        if (ret1.success.toString() == "true") {
          LoginApi.loginValidateApi({
            "JWT": "${ret1.data!.jwt.toString()}",
          }).then((ret) {
            if (ret.success.toString() == "true") {
              prefs!.setBool("login", true);
              prefs!.setString("id", ret.data!.user!.id.toString());
              prefs!.setString("email", ret.data!.user!.userEmail.toString());
              prefs!.setString("name", ret.data!.user!.displayName.toString());
              prefs!.setString(
                  "username", ret.data!.user!.userLogin.toString());
              prefs!.setString("token", ret.data!.jwt![0].token.toString());

              Fluttertoast.showToast(msg: "Login Successfully");
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
                    (route) => false,
              );
            } else {
              Fluttertoast.showToast(msg: "${ret.data!.message.toString()}");
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignInScreen(),
                ),
              );
            }
          });
        } else {
          Fluttertoast.showToast(msg: "${ret1.data!.message.toString()}");
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SignInScreen(),
            )
          );
        }
      });
    } catch (e) {
      rethrow;
    }
}

}
