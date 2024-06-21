import 'package:flutter/material.dart';
import 'package:ilmercato/constants.dart';
import 'package:ilmercato/screens/cart/cart_screen.dart';
import 'package:ilmercato/screens/category/category_screen.dart';
import 'package:ilmercato/screens/checkout/checkout.dart';
import 'package:ilmercato/screens/home/home_screen.dart';
import 'package:ilmercato/screens/payment/payment.dart';
import 'package:ilmercato/screens/product/product_screen.dart';
import 'package:ilmercato/screens/shippingdetail/shipping.dart';

class BreadCrumButton extends StatelessWidget {
  final String name;
  final String id;
  final String link;
  const BreadCrumButton({super.key, required this.id, required this.name, required this.link});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomeScreen()));
              },
              child:Container(
                height: 30,
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(Icons.home,size: 22,color: kDarkTextColor,)),
              )
          ),
          SizedBox(width: 5,),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(">",style: TextStyle(color:kDarkTextColor, fontSize: 22))),
          SizedBox(width: 5,),
          GestureDetector(
              onTap: (){
                (link == "Category")?
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CategoryScreen(
                            parent: id,
                            cname: name
                        ))):
                Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => ProductScreen(parent: id,name: name)));
              },
              child:Container(
                width: MediaQuery.of(context).size.width*0.7,
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(name,)),
              )
          ),
        ],
      ),
    );
  }
}



class BreadCrumExtraButton extends StatelessWidget {
  final String name;
  const BreadCrumExtraButton({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomeScreen()));
              },
              child:Container(
                height: 30,
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(Icons.home,size: 22,color: kDarkTextColor,)),
              )
          ),
          SizedBox(width: 5,),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(">",style: TextStyle(color:kDarkTextColor, fontSize: 22))),
          SizedBox(width: 5,),
          GestureDetector(
              onTap: (){
                if(name == "Cart")
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CartScreen()));
                if(name == "Checkout")
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Checkout()));

                if(name == "Delivery Address")
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Shipping()));

              },
              child:Container(
                width: MediaQuery.of(context).size.width*0.7,
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(name)),
              )
          ),
        ],
      ),
    );
  }
}
