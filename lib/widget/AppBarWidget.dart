import 'package:flutter/material.dart';
import 'package:ilmercato/constants.dart';
import 'package:ilmercato/screens/home/home_screen.dart';

Widget commonAppBarWidget(context,title,sKey) {

  return Container(
    width: MediaQuery.of(context).size.width*.9,
    child: AppBar(
      iconTheme: IconThemeData(color: kAppBarActiveIconColor, opacity: 1),
      automaticallyImplyLeading: false,
      backgroundColor: kAppBarColor,
      title:Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children:[
              GestureDetector(
                onTap: (){
                  sKey.currentState!.openDrawer();
                },
                child: Icon(Icons.menu),
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.8,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Center(child: Text("IL Mercato BH",style: headingStyleWhite,))
                ),
              ),
            ],
          ),
    ),
  );
}


Widget commonAppBarWidgetFilter(context,title,sKey,parent) {

  // return AppBar(
  //   iconTheme: IconThemeData(color: kAppBarActiveIconColor, opacity: 1),
  //   automaticallyImplyLeading: false,
  //   backgroundColor: kAppBarColor,
  //   title:Row(
  //     mainAxisAlignment: MainAxisAlignment.start,
  //     children:[
  //       GestureDetector(
  //         onTap: (){
  //           sKey.currentState!.openDrawer();
  //         },
  //         child: Icon(Icons.menu),
  //       ),
  //       Container(
  //         width: MediaQuery.of(context).size.width*0.8,
  //         child: GestureDetector(
  //             onTap: () {
  //               Navigator.push(
  //                   context, MaterialPageRoute(builder: (context) => HomeScreen()));
  //             },
  //             child: Center(child: Text("IL ilmercato",style: headingStyleWhite,))
  //         ),
  //       ),
  //
  //      actions: <Widget>[
  //   IconButton(
  //     onPressed: () {
  //        Body11(parent: parent).createState().di
  //     },
  //     icon:Icon(Icons.filter_alt)
  //   )],
  // ]),
  //
  // );

  return AppBar(
      iconTheme: IconThemeData(color: kAppBarActiveIconColor, opacity: 1),
      automaticallyImplyLeading: false,
      backgroundColor: kAppBarColor,
        title:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            // GestureDetector(
            //   onTap: (){
            //     sKey.currentState!.openDrawer();
            //   },
            //   child: Icon(Icons.menu),
            // ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: Center(child: Text("IL ilmercato",style: headingStyleWhite,))
            ),
          ]),
    actions: [
      IconButton(onPressed: () {

        },
        icon:Icon(Icons.filter_alt)
     )
    ]);


}
