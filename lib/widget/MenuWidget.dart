import 'package:flutter/material.dart';
import 'package:ilmercato/constants.dart';
import 'package:ilmercato/screens/product/product_screen.dart';
import 'package:ilmercato/screens/category/category_screen.dart';

class MenuCard extends StatefulWidget {
  const MenuCard();

  @override
  State<MenuCard> createState() => _MenuCardState();
}

class _MenuCardState extends State<MenuCard> {

  List<Map<String, dynamic>> categories = [
    {"id": "55","title":"Tea","name":"Althaus Tea",},
    {"id": "56","title":"Coffee","name":"Lavazza Coffee"},
    {"id": "57","title":"Syrups","name":"ODK Syrups"},
    {"id": "58","title":"Machines","name":"Machines"},
    {"id": "59","title":"Accessories","name":"Accessories"}];

   @override
      Widget build(BuildContext context) {

        return  Container(
          decoration: BoxDecoration(
              color: kDarkTextColor,
              border: Border(left: BorderSide(
                  width: 0.2,color: kSecondaryColor
              ), )
          ),
          child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width*0.12,
                     child: Padding(
                          padding: const EdgeInsets.only(left: 10.0,right: 0.0,top: 10,bottom: 10),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CategoryScreen(
                                          parent: "${categories[0]['id'].toString()}",
                                          cname: "${categories[0]['name'].toString()}"
                                      )));
                            },
                              child: Text("${categories[0]["title"]}",style: smallListTextWhite,)),
                        ),
                   ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.15,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0.0,right: 0.0,top: 10,bottom: 10),
                        child: GestureDetector(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CategoryScreen(
                                          parent: "${categories[1]['id'].toString()}",
                                          cname: "${categories[1]['name'].toString()}"
                                      )));
                            },
                            child: Text("${categories[1]["title"]}",style: smallListTextWhite,)),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.15,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0.0,right: 0.0,top: 10,bottom: 10),
                        child: GestureDetector(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CategoryScreen(
                                          parent: "${categories[2]['id'].toString()}",
                                          cname: "${categories[2]['name'].toString()}"
                                      )));

                            },
                            child: Text("${categories[2]["title"]}",style: smallListTextWhite,)),
                      ),
                    ),
                    Container(
                    width: MediaQuery.of(context).size.width*0.20,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0.0,right: 2.0,top: 10,bottom: 10),
                        child: GestureDetector(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CategoryScreen(
                                          parent: "${categories[3]['id'].toString()}",
                                          cname: "${categories[3]['name'].toString()}"
                                      )));
                            },
                            child: Text("${categories[3]["title"]}",style: smallListTextWhite,)),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.25,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 2.0,right: 2.0,top: 10,bottom: 10),
                        child: GestureDetector(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CategoryScreen(
                                          parent: "${categories[4]['id'].toString()}",
                                          cname: "${categories[4]['name'].toString()}"
                                      )));
                            },
                            child: Text("${categories[4]["title"]}",style: smallListTextWhite,)),
                      ),
                    ),
                  ],
          )
        );
      }

  // Future<dynamic> topCategoriesApi() async {
  //   try {
  //     var res = await LoginApi.topCategoriesApi();
  //     var length = res.data!.records!.length;
  //
  //     for (var ia = 0; ia < length; ia++) {
  //       var catId = res.data!.records![ia].catid;
  //       var catImage = res.data!.records![ia].catimage;
  //       var catName = res.data!.records![ia].catname;
  //       var catParent = res.data!.records![ia].catparent;
  //       categories.add({
  //         "id": catId,
  //         "image": catImage,
  //         "text": catName,
  //         "parent": catParent
  //       });
  //     }
  //     return categories;
  //   } catch (e) {
  //     throw (e);
  //   }
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return  Container(
  //     height: 40,
  //     decoration: BoxDecoration(
  //         color: kDarkTextColor,
  //         border: Border(left: BorderSide(
  //             width: 0.2,color: kSecondaryColor
  //         ), )
  //     ),
  //     child: ListView.builder(
  //         shrinkWrap: true,
  //         itemCount: categories.length,
  //         itemBuilder: (context, int index) {
  //           return Row(
  //             mainAxisSize: MainAxisSize.max,
  //             mainAxisAlignment: MainAxisAlignment.spaceAround,
  //             children: [
  //              Padding(
  //                   padding: const EdgeInsets.only(left: 14.0,right: 14.0,top: 10,bottom: 10),
  //                   child: GestureDetector(
  //                     onTap: (){
  //                       Navigator.push(
  //                           context,
  //                           MaterialPageRoute(
  //                               builder: (context) => ProductScreen(
  //                                 parent: categories[index]['id'].toString(),
  //                               )));
  //                     },
  //                       child: Text("${categories[index]["title"]}",style: smallListTextWhite,)),
  //                 ),
  //             ],
  //           );
  //         }),
  //   );
  // }
}


class MenuCard1 extends StatefulWidget {
  final String parent;
  const MenuCard1({required this.parent});

  @override
  State<MenuCard1> createState() => _MenuCard1State();
}

class _MenuCard1State extends State<MenuCard1> {
  @override
  void initState() {
    super.initState();
  }

  List<Map<String, dynamic>> categories = [
    {"id": 55, "title": "Tea","name":"Althaus Tea"},
    {"id": 56, "title": "Coffee","name":"Lavazza Coffee"},
    {"id": 57, "title": "Syrups","name":"ODK Syrups"},
    {"id": 58, "title": "Machines","name":"Machines"},
    {"id": 59, "title": "Accessories","name":"Accessories"}
  ];


  @override
  Widget build(BuildContext context) {

    return Container(
        decoration: BoxDecoration(
            color: kDarkTextColor,
            border: Border(left: BorderSide(
                width: 0.2, color: kSecondaryColor
            ),)
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.12,
              color: (widget.parent == "" || widget.parent != categories[0]['id'].toString())?Colors.black:kBackgroundColor,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 10.0, right: 0.0, top: 10, bottom: 10),
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  CategoryScreen(
                                    parent: categories[0]['id']
                                        .toString(),
                                    cname: categories[0]['name']
                                        .toString(),
                                  )));
                    },
                    child: Text(
                      "${categories[0]["title"]}", style: (widget.parent == "" || widget.parent != categories[0]['id'].toString())?smallListTextWhite:smallListText)),
              ),
            ),
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 0.15,
              color: (widget.parent == "" || widget.parent != categories[1]['id'].toString())?Colors.black:kBackgroundColor,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 0.0, right: 0.0, top: 10, bottom: 10),
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ProductScreen(
                                    parent: categories[1]['id']
                                        .toString(),
                                    name: categories[1]['name']
                                        .toString(),
                                  )));
                    },
                    child: Center(
                      child: Text(
                        "${categories[1]["title"]}", style: (widget.parent == "" || widget.parent != categories[1]['id'].toString())?smallListTextWhite:smallListText),
                    )),
              ),
            ),
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 0.15,
              color: (widget.parent == "" || widget.parent != categories[2]['id'].toString())?Colors.black:kBackgroundColor,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 0.0, right: 0.0, top: 10, bottom: 10),
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ProductScreen(
                                    parent: categories[2]['id']
                                        .toString(),
                                    name: categories[2]['name']
                                        .toString(),
                                  )));
                    },
                    child: Center(
                      child: Text(
                        "${categories[2]["title"]}", style: (widget.parent == "" || widget.parent != categories[2]['id'].toString())?smallListTextWhite:smallListText),
                    )),
              ),
            ),
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 0.20,
              color: (widget.parent == "" || widget.parent != categories[3]['id'].toString())?Colors.black:kBackgroundColor,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 0.0, right: 2.0, top: 10, bottom: 10),
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ProductScreen(
                                    parent: categories[3]['id']
                                        .toString(),
                                    name: categories[3]['name']
                                        .toString(),
                                  )));
                    },
                    child: Center(
                      child: Text(
                        "${categories[3]["title"]}", style: (widget.parent == "" || widget.parent != categories[3]['id'].toString())?smallListTextWhite:smallListText),
                    )),
              ),
            ),
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 0.25,
              color: (widget.parent == "" || widget.parent != categories[4]['id'].toString())?Colors.black:kBackgroundColor,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 2.0, right: 2.0, top: 10, bottom: 10),
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ProductScreen(
                                    parent: categories[4]['id']
                                        .toString(),
                                    name: categories[4]['name']
                                        .toString(),
                                  )));
                    },
                    child: Center(
                      child: Text(
                        "${categories[4]["title"]}",style: (widget.parent == "" || widget.parent != categories[4]['id'].toString())?smallListTextWhite:smallListText),
                    )),
              ),
            ),
          ]
        )
    );
  }
}