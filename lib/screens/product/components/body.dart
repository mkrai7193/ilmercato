import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ilmercato/components/default_button.dart';
import 'package:ilmercato/constants.dart';
import 'package:ilmercato/screens/cart/model/boxes.dart';
import 'package:ilmercato/screens/details/details_screen.dart';
import 'package:ilmercato/screens/product/components/MainProductList.dart';
import 'package:ilmercato/screens/product/model/ProductsModel.dart';
import 'package:ilmercato/widget/MenuWidget.dart';
import 'package:ilmercato/widget/breadcrumWidget.dart';
import 'package:ilmercato/widget/backWidget.dart';


class Body11 extends StatefulWidget {
  final String parent;
  final String name;
  final String brand;

  Body11({required this.parent,required this.name, required this.brand});

  @override
  State<Body11> createState() => _Body11State();
}

class _Body11State extends State<Body11> with TickerProviderStateMixin  {
  final GlobalKey<ScaffoldState> sKey = GlobalKey();
  int selected = 0;
  var result;

  @override
  Widget build(BuildContext context) {

    return  SafeArea(
                  top: true,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Container(
                      //     height: 50,
                      //     child:   // Container(
                      //   height: 50,
                      //   child: MenuCard()),
                      // Container(
                      //   height: 100,
                      //   width: MediaQuery.of(context).size.width,
                      //   color: Colors.white,
                      //   child: MainBrandList(cid: widget.parent,brand: widget.brand)
                      // ),
                      SizedBox(height: 10,),
                      BackButton1(),
                      BreadCrumButton(id:widget.parent,name: widget.name,link:"Product" ),
                      SizedBox(height: 5,),
                      Expanded(
                          flex: 4,
                          child: MainProductList(cid: widget.parent, brand:widget.brand)
                      ),
                      // SizedBox(height: SizeConfig.screenHeight * 0.03),
                      // DefaultButton(
                      //   press: (){},
                      //   text: "PROCEED TO CHECKOUT",
                      // ),
                      // SizedBox(height: SizeConfig.screenHeight * 0.03),
                    ],
                  ),
    );
}


  Widget getProductDesign(ProductsModel product,int index,BuildContext context)
  {
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
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductDetailsScreen(
                                    pid: product.id.toString(),
                                  pname: product.name.toString(),
                                  )));
                      },
                      child: Container(
                        color: kSecondaryColor,
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Image.network(
                            "${product.images![0].src}",
                            loadingBuilder: (_, child, loadingProgress) =>
                            loadingProgress == null
                                ? child
                                : const Center(child: CircularProgressIndicator()),
                          ),
                        ),
                      ),
                    ),
                  ),

                  Container(
                    width: MediaQuery.of(context).size.width*0.55,
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
                                        pid: product.id.toString(),
                                        pname: product.name.toString(),
                                      )));
                            },
                            child: Text("${product.name}",style: TextStyle(
                              fontSize: 16,
                              color: kTextColor,
                              fontWeight: FontWeight.w600,
                              height: 1.5,
                            ),)),
                        // if(product.description !='')
                        // Html(
                        //   data: "${product.description}".substring(0, 160)+'..',
                        //   style: {
                        //     '#': Style(
                        //         fontSize: FontSize(14),
                        //         maxLines: 1,
                        //         textOverflow: TextOverflow.ellipsis,
                        //         textAlign: TextAlign.left,
                        //         alignment: Alignment.topLeft
                        //     ),
                        //   },
                        // ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            (product.salePrice.toString() !="")?
                            Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("BD ${double.parse('${product.regularPrice}')}", maxLines: 1, style:TextStyle(decoration: TextDecoration.lineThrough,fontSize: 16),),
                                    Text("BD ${double.parse('${product.salePrice}')}", maxLines: 1, style: headingRate,),
                                  ],
                                )
                            ): Text("BD ${double.parse('${product.price}')}", maxLines: 1, style: headingRate,),
                            Container(
                              child: SmallDefaultButton(
                                text: "ADD +",
                                press: (){

                                  ShopCartsH().addToBag(
                                      1,
                                      "${product.sku}",
                                      int.parse(product.id.toString()),
                                      "${product.name}",
                                      "${product.images![0].src}",
                                      double.parse(product.price.toString()),
                                      1,
                                      "${product.brands}",
                                      "0");

                                  Fluttertoast.showToast(msg: "${product.name} is added Successfully in Cart");
                                },
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
  }


}




