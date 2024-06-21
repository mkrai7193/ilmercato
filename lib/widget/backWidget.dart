import 'package:flutter/material.dart';
import 'package:ilmercato/constants.dart';

class BackButton1 extends StatelessWidget {
  const BackButton1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child:Container(
            height: 30,
            child: Align(
                alignment: Alignment.topLeft,
                child: Icon(Icons.arrow_back,size: 22,color: kDarkTextColor,)),
          )
      ),
    );
  }
}
