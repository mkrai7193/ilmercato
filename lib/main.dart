import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:ilmercato/screens/thankyou/thankyou.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ilmercato/routes.dart';
import 'package:ilmercato/screens/Splash.dart';
import 'package:ilmercato/theme.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'screens/cart/model/shoppingcartH.dart';

SharedPreferences? prefs;
var box;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isAndroid) {
    await AndroidInAppWebViewController.setWebContentsDebuggingEnabled(true);
  }
  await Hive.initFlutter();
  Hive.registerAdapter(ShoppingCartHAdapter());
  box = await Hive.openBox<ShoppingCartH>('ShopCartsH');
  prefs = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        onGenerateRoute: (settings) {
          // Check if the route is a deep link
          if (settings.name == '/thankyou') {
            // Handle the deep link and navigate to the desired page
            return MaterialPageRoute(
              builder: (context) => ThankYou(),
            );
          }
        },
      title: 'IL ilmercato',
      theme: theme(),
      initialRoute: Splash.routeName,
      routes: routes,
    );
  }
}


