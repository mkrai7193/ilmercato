import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ilmercato/main.dart';
import 'package:ilmercato/screens/home/home_screen.dart';
import 'package:ilmercato/screens/sign_in/sign_in_screen.dart';
import 'package:ilmercato/screens/splash/splash_screen.dart';
import 'package:ilmercato/size_config.dart';


class Splash extends StatefulWidget {
  static String routeName = "/splash";
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {
  AnimationController? _controller;
  Animation<Offset>? _animation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _animation = Tween<Offset>(

      begin: const Offset(0.0, 0.0),
      end: const Offset(0.0, 0.5),
    ).animate(CurvedAnimation(
      parent: _controller!,
      curve: Curves.easeInCubic,
    ));
    _controller!.forward();
    Timer(Duration(seconds: 3), () => Navigator.pushReplacement(context, MaterialPageRoute(
           builder: (context) =>
          HomeScreen(initial: true,),
            ),
         ),
     );
  }


  bool up = false;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body:Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              "assets/images/bg.png",
              fit: BoxFit.fill,
            ),
          ),

          Positioned(
            child:  Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SlideTransition(
                      position: _animation!,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 70.0,right: 90.0),
                        child: Image.asset("assets/images/Orig-IM-Logo-rect.png"),
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0,right: 30.0, top:70),
                    child: Image.asset("assets/images/Ellipse 2.png"),
                  ),
                ],
              )),)
        ],
      ),
    );
  }
}
