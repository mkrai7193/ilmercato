import 'package:flutter/material.dart';
import 'package:ilmercato/screens/home/components/slider.dart';
import 'package:ilmercato/widget/MenuWidget.dart';
import 'categories.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  // List<String> recentCities = [];
  //
  // Future<dynamic> searchSuggestionProduct() async {
  //   try {
  //     var res = await LoginApi.searchSuggestionProduct();
  //     var length = res.data!.records!.length;
  //
  //     for (var ia = 0; ia < length; ia++) {
  //       var pgmName1 = res.data!.records![ia].pgmName;
  //       recentCities.add(pgmName1!);
  //     }
  //     return recentCities;
  //   } catch (e) {
  //     throw (e);
  //   }
  // }
  //
  // initState(){
  //   super.initState();
  //   searchSuggestionProduct();
  // }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MenuCard(),
          Container(
            height: 140,
              width: MediaQuery.of(context).size.width*1,
              child: SliderA()),
          Categories(),
        ],
      ),
    );
  }
}
