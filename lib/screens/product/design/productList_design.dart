import 'package:flutter/material.dart';
import 'package:ilmercato/components/default_button.dart';
import 'package:ilmercato/constants.dart';
import 'package:ilmercato/screens/details/details_screen.dart';


class ProductDesign extends StatefulWidget {
  const ProductDesign();

  @override
  State<ProductDesign> createState() => _ProductDesignState();
}

class _ProductDesignState extends State<ProductDesign> {

  List<Map<String, dynamic>> productDetail = [
    {
      "id": "1",
      "name": "Lavazza Experience Kit – 15 Capsules",
      "description": "<p>The Lavazza Experience Kit is a box of 15 premium Lavazza BLUE coffee capsules with 5 Blends so the coffee lover can taste all Lavazza BLUE capsules available for the Bahrain market in just one box! Available capsules are: Dolce, Crema Lungo, Ricco, Intenso and Decaf.</p>",
      "price": "BD7.000",
      "discountPrice": "BD6.000",
      "category":"Coffee",
      "brand":"Lavazza",
      "image": "https://healthcarelive.online/imagefolder/3.jpg",
    },
    {
      "id": "2",
      "name": "Lavazza Experience Kit – 30 Capsules",
      "description": "<p>The Lavazza Experience Kit is a box of 15 premium Lavazza BLUE coffee capsules with 5 Blends so the coffee lover can taste all Lavazza BLUE capsules available for the Bahrain market in just one box! Available capsules are: Dolce, Crema Lungo, Ricco, Intenso and Decaf.</p>",
      "price": "BD5.000",
      "discountPrice": "BD4.000",
      "category":"Coffee",
      "brand":"Lavazza",
      "image": "https://healthcarelive.online/imagefolder/3.jpg",
    },
    {
      "id": "3",
      "name": "Lavazza Experience Kit – 45 Capsules",
      "description": "<p>The Lavazza Experience Kit is a box of 15 premium Lavazza BLUE coffee capsules with 5 Blends so the coffee lover can taste all Lavazza BLUE capsules available for the Bahrain market in just one box! Available capsules are: Dolce, Crema Lungo, Ricco, Intenso and Decaf.</p>",
      "price": "BD10.000",
      "discountPrice": "BD9.000",
      "category":"Coffee",
      "brand":"Lavazza",
      "image": "https://healthcarelive.online/imagefolder/3.jpg",
    },
    {
      "id": "4",
      "name": "Lavazza Experience Kit – 60 Capsules",
      "description": "<p>The Lavazza Experience Kit is a box of 15 premium Lavazza BLUE coffee capsules with 5 Blends so the coffee lover can taste all Lavazza BLUE capsules available for the Bahrain market in just one box! Available capsules are: Dolce, Crema Lungo, Ricco, Intenso and Decaf.</p>",
      "price": "BD15.000",
      "discountPrice": "BD14.000",
      "category":"Coffee",
      "brand":"Lavazza",
      "image": "https://healthcarelive.online/imagefolder/3.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
        itemCount: productDetail.length,
        itemBuilder: (context, index) {

          /* Start Product Design */

          return Container(
            height: 200,
            decoration: BoxDecoration(
              color: (index % 2 == 0) ? kBackgroundColor : kBackground2Color,
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 30,bottom: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductDetailsScreen(
                                  pid: productDetail[index]['id'].toString(),
                                pname: productDetail[index]['name'].toString(),
                               )));
                    },
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Image.network(
                        "${productDetail[index]['image']}",
                        loadingBuilder: (_, child, loadingProgress) =>
                        loadingProgress == null
                            ? child
                            : const Center(child: CircularProgressIndicator()),
                      ),
                    ),
                  ),

                  Container(
                    width: MediaQuery.of(context).size.width*0.6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProductDetailsScreen(
                                          pid: productDetail[index]['id'].toString(),
                                        pname: productDetail[index]['name'].toString(),
                                         )));
                            },
                            child: Text("${productDetail[index]['name']}",maxLines: 1,style: listTextColor,)),
                        // Html(
                        //   data: "${productDetail[index]['description']}".substring(0, 160)+'..',
                        //   style: {
                        //     '#': Style(
                        //       fontSize: FontSize(14),
                        //       maxLines: 1,
                        //       textOverflow: TextOverflow.ellipsis,
                        //       textAlign: TextAlign.left,
                        //       alignment: Alignment.topLeft
                        //     ),
                        //   },
                        // ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Container(
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text("${productDetail[index]['price']}", maxLines: 1, style:TextStyle(decoration: TextDecoration.lineThrough,fontSize: 16),),
                                 Text("${productDetail[index]['discountPrice']}", maxLines: 1, style: headingRate,),
                               ],
                             )
                           ),
                           Container(
                               child: SmallDefaultButton(
                               text: "ADD +",
                               press: (){},
                             ),
                           )

                         ],
                       )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );

          /* End Product Design */

        });

  }
}
