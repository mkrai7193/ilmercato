import 'package:flutter/material.dart';
import 'package:ilmercato/components/default_button.dart';
import 'package:ilmercato/screens/cart/cart_screen.dart';
import 'package:ilmercato/screens/details/components/product_description.dart';
import 'package:ilmercato/screens/details/components/top_rounded_container.dart';
import 'package:ilmercato/screens/details/design/product_description.dart';
import 'package:ilmercato/widget/MenuWidget.dart';

class ProductDetailDesign extends StatefulWidget {
  const ProductDetailDesign();

  @override
  State<ProductDetailDesign> createState() => _ProductDetailDesignState();
}

class _ProductDetailDesignState extends State<ProductDetailDesign> {

  List<Map<String, dynamic>> mainProductDetail = [
  {
  "id": "1",
  "name": "Lavazza Experience Kit – 15 Capsules",
  "description": '<p>The Lavazza Experience Kit is a box of 15 premium Lavazza BLUE coffee capsules with 5 Blends so the coffee lover can taste all Lavazza BLUE capsules available for the Bahrain market in just one box! Available capsules are: Dolce, Crema Lungo, Ricco, Intenso and Decaf.</p>',
  "price": "BD7.000",
  "discountPrice": "BD6.000",
  "category":"Coffee",
  "brand":"Lavazza",
  "image": "https://healthcarelive.online/imagefolder/3.jpg",
    "rating": "4.5",
    "user" : "230"
},
    ];


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ListView(
        children: [
          SizedBox(
            width: double.infinity,
            child: AspectRatio(
              aspectRatio: 0.75,
              child: Hero(
                tag: mainProductDetail[0]['id'],
                child: Image.network(
                  "${mainProductDetail[0]['image']}",
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
          // ProductDescription(product: records),
          // BottomNav(records:records),
          TopRoundedContainer(
            color: Colors.transparent,
            child: Column(
              children: [
                ProductDescriptionDesign(
                  product: mainProductDetail ,
                ),

              ],
            ),
          ),
          SizedBox(height: 30),
          Row(
            children: [
              MediumColorDefaultButton(
                text: "ADD TO CART",
                press: (){
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (BuildContext context) => new CartScreen(),
                    ),
                  );

                },
              ),
              Spacer(),
              MediumDefaultButton(
                text: "BUY NOW",
                press: (){
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (BuildContext context) => new CartScreen(),
                    ),
                  );
                },
              ),

            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
