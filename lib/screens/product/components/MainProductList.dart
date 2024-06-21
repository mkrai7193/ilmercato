import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ilmercato/Api/LoginApi.dart';
import 'package:ilmercato/components/default_button.dart';
import 'package:ilmercato/screens/cart/model/boxes.dart';
import 'package:ilmercato/screens/details/details_screen.dart';
import 'package:ilmercato/screens/product/model/NewProductCategoryModel.dart';
import '../../../constants.dart';

class MainProductList extends StatefulWidget {
  final String cid;
  final String brand;
  const MainProductList({super.key, required this.cid, required this.brand});

  @override
  State<MainProductList> createState() => _MainProductListState();
}

class _MainProductListState extends State<MainProductList> {


  @override
  Widget build(BuildContext context) {
    return FutureBuilder<NewProductCategoryModel>(
      future:LoginApi.GetProductCategoryApi({"cid":widget.cid}),
      builder: (context, snapshot) {
        // Checking if future is resolved or not
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData) {

            if(snapshot.data!.data!.records!.length == 0) {
              return Center(child: Text("No Result Found!!"));
            }else {
              return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: snapshot.data!.data!.records!.length,
                  itemBuilder: (context, int index) {
                    return getPrntCat1(
                        snapshot.data!.data!.records![index], index);
                  });
            }
          } else if (snapshot.hasError) {
            return Container(
                alignment:AlignmentDirectional.center,
                child: Text("Technical Issue! Please Try Again"));
          }
        }
        return Container(
            alignment:AlignmentDirectional.center,
            child: const CircularProgressIndicator.adaptive());
      },
    );
  }

  Widget getPrntCat1(Records product,int index) {
    double price;
    if(product.saleprice ==0){
       price = double.parse(product.regularprice!.toStringAsFixed(3));
    }else{
      price = double.parse(product.saleprice!.toStringAsFixed(3));
    }

    /* Start Product Design */
    return Container(
      height: 180,
      decoration: BoxDecoration(
        color: (index % 2 == 0) ? kBackgroundColor : kBackground2Color,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10,bottom: 10),
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
                            pname: product.pname.toString(),

                          )));
                },
                child: Container(
                  color: kSecondaryColor,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Image.network(
                      "${product.images!.toString()}",
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
              width: MediaQuery.of(context).size.width*0.45,
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
                                  pname:product.pname.toString()
                                )));
                      },
                      child: Text("${product.pname}",maxLines:3,style: TextStyle(
                        fontSize: 14,
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
                  SizedBox(height: 5,),
                  (product.saleprice !=0)?
                  Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("BD ${product.regularprice!.toStringAsFixed(3)}", maxLines: 1, style:TextStyle(decoration: TextDecoration.lineThrough,fontSize: 16),),
                          Text("BD ${product.saleprice!.toStringAsFixed(3)}", maxLines: 1, style: headingRate,),

                        ],
                      )
                  ): Text("BD ${product.regularprice!.toStringAsFixed(3)}", maxLines: 1, style: headingRate,),
                  SizedBox(height: 5,),
                  Container(
                    child: SmallDefaultButton(
                      text: "ADD +",
                      press: (){

                        ShopCartsH().addToBag(
                            1,
                            "${product.sku}",
                            int.parse(product.id.toString()),
                            "${product.pname}",
                            "${product.images.toString()}",
                            price,
                            1,
                            "${product.brand}",
                            "0");

                        Fluttertoast.showToast(msg: "${product.pname} is added Successfully in Cart");
                      },
                    ),
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
