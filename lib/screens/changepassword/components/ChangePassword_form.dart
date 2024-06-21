import 'package:flutter/material.dart';
import 'package:ilmercato/components/default_button.dart';
import 'package:ilmercato/constants.dart';
import 'package:ilmercato/components/form_error.dart';

class ChangePasswordForm extends StatefulWidget {
  const ChangePasswordForm({Key? key}) : super(key: key);

  @override
  State<ChangePasswordForm> createState() => _ChangePasswordFormState();
}

class _ChangePasswordFormState extends State<ChangePasswordForm> {
  var passController = TextEditingController();
  bool _passwordVisible = false;
  var newPassController = TextEditingController();
  bool _newPasswordVisible = false;
  var returnPassController = TextEditingController();
  bool _returnPasswordVisible = false;


  final _formKey = GlobalKey<FormState>();
  final List<String?> errors = [];



  String? password;
  String? newPassword;
  String? returnPassword;

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
          buildOldPasswordFormField(),
          const SizedBox(height: 20),
          buildNewPasswordFormField(),
          const SizedBox(height: 20),
          buildReturnPasswordFormField(),
          const SizedBox(height: 20),
          FormError(errors: errors),
          const SizedBox(height: 20),
          DefaultButton(
            text: "UPDATE PASSWORD",
            press: () {
              if (_formKey.currentState!.validate()) {
             //   sendForgotApi();
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildOldPasswordFormField() {
    return TextFormField(
      obscureText: !_passwordVisible,
      style: TextStyle(color: Colors.black),
      controller: passController,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 4) {
          removeError(error: kShortPassError);
        }
        password = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          //   addError(error: kPassNullError);
          return "$kPassNullError";
        } else if (value.length < 4) {
          addError(error: kShortPassError);
          return "$kShortPassError";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Old Password",
        hintText: "Enter your Old Password",
        labelStyle: TextStyle(color: Colors.black),
        hintStyle: TextStyle(color: Colors.black),
        fillColor: Colors.black,
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon:  Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Icon(Icons.lock )
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

  TextFormField buildNewPasswordFormField() {
    return TextFormField(
      obscureText: !_newPasswordVisible,
      style: TextStyle(color: Colors.black),
      controller: newPassController,
      onSaved: (newValue) => newPassword = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 4) {
          removeError(error: kShortPassError);
        }
        password = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "$kPassNullError";
        } else if (value.length < 4) {
          addError(error: kShortPassError);
          return "$kShortPassError";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "New Password",
        hintText: "Enter your New Password",
        labelStyle: TextStyle(color: Colors.black),
        hintStyle: TextStyle(color: Colors.black),
        fillColor: Colors.black,
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon:  Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Icon(Icons.lock )
        ),
        suffixIcon: IconButton(
          icon: Icon(
            // Based on passwordVisible state choose the icon
            _newPasswordVisible ? Icons.visibility : Icons.visibility_off,
            color: kDarkTextColor,
          ),
          onPressed: () {
            // Update the state i.e. toogle the state of passwordVisible variable
            setState(() {
              _newPasswordVisible = !_newPasswordVisible;
            });
          },
        ),
      ),
    );
  }

  TextFormField buildReturnPasswordFormField() {
    return TextFormField(
      obscureText: !_returnPasswordVisible,
      style: TextStyle(color: Colors.black),
      controller: returnPassController,
      onSaved: (newValue) => returnPassword = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 4) {
          removeError(error: kShortPassError);
        }
        password = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "$kPassNullError";
        } else if (value.length < 4) {
          addError(error: kShortPassError);
          return "$kShortPassError";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Confirm Password",
        hintText: "Enter your Confirm New Password",
        labelStyle: TextStyle(color: Colors.black),
        hintStyle: TextStyle(color: Colors.black),
        fillColor: Colors.black,
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon:  Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Icon(Icons.lock )
        ),
        suffixIcon: IconButton(
          icon: Icon(
            // Based on passwordVisible state choose the icon
            _returnPasswordVisible ? Icons.visibility : Icons.visibility_off,
            color: kDarkTextColor,
          ),
          onPressed: () {
            // Update the state i.e. toogle the state of passwordVisible variable
            setState(() {
              _returnPasswordVisible = !_returnPasswordVisible;
            });
          },
        ),
      ),
    );
  }

  // void sendForgotApi() {
  //   showDialog(
  //       context: context,
  //       barrierDismissible: false,
  //       builder: (BuildContext c) {
  //         return Container(
  //             alignment: AlignmentDirectional.center,
  //             child: const CircularProgressIndicator.adaptive());
  //       });
  //   try {
  //     var res = LoginApi.forgotPasswordApi(
  //         {"email": emailController.text.toString()});
  //     res.then((value) async {
  //       if (value.status == "200") {
  //         Fluttertoast.showToast(msg: value.message.toString());
  //         Navigator.pushNamed(context, SignInScreen.routeName);
  //       } else {
  //         Fluttertoast.showToast(msg: value.message.toString());
  //         Navigator.pushNamed(context, ChangePasswordScreen.routeName);
  //       }
  //     });
  //   } catch (e) {
  //     rethrow;
  //   }
  // }
}
