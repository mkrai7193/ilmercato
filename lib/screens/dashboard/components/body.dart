import 'package:flutter/material.dart';
import 'package:ilmercato/constants.dart';
import 'package:ilmercato/screens/dashboard/components/report.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  List<Map<String, dynamic>> dash =[
    {
      "image":"assets/images/whatsapp.png",
      "text":"No of Order",
      "link":Report()
  },
    {
      "image":"assets/images/whatsapp.png",
      "text":"Report",
      "link":Report()
    },
    {
      "image":"assets/images/whatsapp.png",
      "text":"Order1",
      "link":Report()
    },
    {
      "image":"assets/images/whatsapp.png",
      "text":"Order2",
      "link":Report()
    },
  ];

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
          itemCount: dash.length,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              crossAxisSpacing: 10, mainAxisSpacing: 10,
              childAspectRatio: 1
          ),
          itemBuilder: (BuildContext context, index) {
            return Container(
              decoration:  BoxDecoration(
                border: Border.all(color: kDarkTextColor.withOpacity(0.1)),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => dash[index]['link'] ));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                      Image.asset("${dash[index]['image']}",width: 100,),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(dash[index]['text'],style: TextStyle(fontSize: 25),),
                      )
                  ],
                ),
              ),
            );
          }),
    );
  }
}

class Dashboard
{
  String? icon;
  String? text;
  String? link;
}