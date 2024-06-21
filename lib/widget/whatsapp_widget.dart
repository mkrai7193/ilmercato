import 'dart:io';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ilmercato/constants.dart';

openProductWhatApp(msg, BuildContext context) async {
  var whatsAppNo = kWhatsAppNo;
  var whatsAppURL_android =
      "whatsapp://send?phone=$whatsAppNo&text=${msg.toString()}";
  // var whatsAppURL_ios = "https://wa.me/$whatsAppNo?text=${msg}${Uri.parse("Product Image -> ${record.pgmImg} \n Product Id -> ${pid} \n Product Name -> ${pName}")}";
  var whatsAppURL_ios = "https://wa.me/$whatsAppNo?text=${msg.toString()}";
  if (Platform.isIOS) {
    if (await canLaunch(whatsAppURL_ios)) {
      await launch(whatsAppURL_ios);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: new Text(
        "whatsapp no installed",
        style: TextStyle(color: Colors.white),
      )));
    }
  } else {
    if (await canLaunch(whatsAppURL_android)) {
      await launch(whatsAppURL_android);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: new Text(
        "whatsapp installed",
        style: TextStyle(color: Colors.white),
      )));
    }
  }
}

openEnquiryWhatApp(msg, BuildContext context) async {
  var whatsAppNo = kWhatsAppNo;
  var whatsAppURL_android =
      "whatsapp://send?phone=$whatsAppNo&text=${msg.toString()}";
  var whatsAppURL_ios = "https://wa.me/$whatsAppNo?text=${msg.toString()}";
  if (Platform.isIOS) {
    if (await canLaunch(whatsAppURL_ios)) {
      await launch(whatsAppURL_ios);
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: new Text("whatsapp no installed")));
    }
  } else {
    if (await canLaunch(whatsAppURL_android)) {
      await launch(whatsAppURL_android);
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: new Text("whatsapp no installed")));
    }
  }
}
