import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ilmercato/Api/LoginApi.dart';
import 'package:ilmercato/components/default_button.dart';
import 'package:ilmercato/components/form_error.dart';
import 'package:ilmercato/main.dart';
import 'package:ilmercato/screens/home/home_screen.dart';
import 'package:ilmercato/screens/sign_in/sign_in_screen.dart';
import 'package:ilmercato/screens/sign_up/model/customerModel.dart';
import 'package:ilmercato/screens/sign_up/sign_up_screen.dart';
import '../../../constants.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../contentpage/content_screen.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  var emailController = TextEditingController();
  var nameController = TextEditingController();
  var mobileController = TextEditingController();
  var passController = TextEditingController();
  bool _passwordVisible = false;

  final _formKey = GlobalKey<FormState>();
  String? name;
  String? email;
  String? mobile;
  String? password;

  // String? conform_password;
  bool? remember = false;

  final List<String?> errors = [];

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
    mobileController.text = "973";
    super.initState();
  }

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.selected,
      MaterialState.focused,
      MaterialState.pressed,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.orange;
    }
    return Colors.pink;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(height: 10),
          buildNameFormField(),
          SizedBox(height: 20),
          buildMobileFormField(),
          SizedBox(height: 20),
          buildEmailFormField(),
          SizedBox(height: 20),
          buildPasswordFormField(),
          SizedBox(height: 10),
          FormError(errors: errors),
          SizedBox(height: 10),
          FormField<bool>(
            builder: (state) {
              return Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Checkbox(
                          value: remember,
                          onChanged: (value) {
                            setState(() {
//save checkbox value to variable that store terms and notify form that state changed
                              remember = value;
                              state.didChange(value);
                            });
                          }),
                      RichText(
                        text: TextSpan(
                          text: "I accept ",
                          style: largeListTextBlack,
                          children: <TextSpan>[
                            TextSpan(
                                text: 'terms & conditions',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => Navigator.push(
                                      context,
                                      new MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            new ContentScreen(cmsId: "3449"),
                                      )),
                                style: TextStyle(fontWeight: FontWeight.w700)),
                          ],
                        ),
                      )
                    ],
                  ),
//display error in matching theme
                  Text(
                    state.errorText ?? '',
                    style: TextStyle(
                      color: Theme.of(context).errorColor,
                    ),
                  )
                ],
              );
            },
//output from validation will be displayed in state.errorText (above)
            validator: (value) {
              if (remember == false) {
                return 'You need to accept terms';
              } else {
                return null;
              }
            },
          ),
          DefaultButton(
            text: "SIGN UP",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                signUp();
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      style: TextStyle(color: Colors.black),
      controller: nameController,
      onSaved: (newValue) => name = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNameNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          //   addError(error: kNameNullError);
          return "$kNameNullError";
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
        prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Icon(
              Icons.account_circle_outlined,
              color: kDarkTextColor,
            )),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
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
        return null;
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
        labelText: "Password",
        hintText: "Enter your Password",
        labelStyle: TextStyle(color: Colors.black),
        hintStyle: TextStyle(color: Colors.black),
        fillColor: Colors.black,
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 12), child: Icon(Icons.lock)),
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

  TextFormField buildMobileFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      controller: mobileController,
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
          // addError(error: kPhoneNumberNullError);
          return "$kPhoneNumberNullError";
        } else if (!mobileValidatorRegExp.hasMatch(value)) {
          //    addError(error: kInvalidMobileError);
          return "$kInvalidMobileError";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Mobile",
        hintText: "Enter your Mobile No.",
        labelStyle: TextStyle(color: Colors.black),
        hintStyle: TextStyle(color: Colors.black),
        fillColor: Colors.black,
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 12), child: Icon(Icons.phone)),
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
          //  addError(error: kEmailNullError);
          return "$kEmailNullError";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          //  addError(error: kInvalidEmailError);
          return "$kInvalidEmailError";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email ID",
        hintText: "Enter your Email Id",
        labelStyle: TextStyle(color: Colors.black),
        hintStyle: TextStyle(color: Colors.black),
        fillColor: Colors.black,
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 12), child: Icon(Icons.mail)),
      ),
    );
  }

  void signUp() {
    CustomerModel model = CustomerModel(
      firstName: nameController.text.trim(),
      phone: mobileController.text.trim(),
      password: passController.text.trim(),
      email: emailController.text.trim(),
    );
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext c) {
          return Container(
              alignment: AlignmentDirectional.center,
              child: const CircularProgressIndicator.adaptive());
        });
    try {
      LoginApi.createCustomer(model).then((ret2) {
        if (ret2) {
          LoginApi.tokenURL({
            "email": emailController.text,
            "password": passController.text
          }).then((ret1) {
            if (ret1.success.toString() == "true") {
              LoginApi.loginValidateApi({
                "JWT": "${ret1.data!.jwt.toString()}",
              }).then((ret) {
                if (ret.success.toString() == "true") {
                  prefs!.setBool("login", true);
                  prefs!.setString("id", ret.data!.user!.id.toString());
                  prefs!.setString(
                      "name", ret.data!.user!.displayName.toString());
                  prefs!
                      .setString("email", ret.data!.user!.userEmail.toString());
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
                  Fluttertoast.showToast(
                      msg: "${ret.data!.message.toString()}");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpScreen(),
                    ),
                  );
                }
              });
            } else {
              Fluttertoast.showToast(msg: "${ret1.data!.message.toString()}");
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignUpScreen(),
                ),
              );
            }
          });
        } else {
          Fluttertoast.showToast(msg: "Wrong Register");
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SignUpScreen(),
            ),
          );
        }
      });
    } catch (e) {
      rethrow;
    }
  }
}
