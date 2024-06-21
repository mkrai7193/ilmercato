import 'package:flutter/material.dart';
import 'package:ilmercato/screens/cart/model/shoppingcartH.dart';

import 'cart_value.dart';

class Body extends StatefulWidget {
  final List<ShoppingCartH> shoppingCart;

  const Body({Key? key,required this.shoppingCart}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
        itemCount: widget.shoppingCart.length,
        itemBuilder: (context, index) {
          ShoppingCartH cart = widget.shoppingCart[index];

          /* Start Product Design */
          return  CartValue(cart: cart, index: index);
          /* End Product Design */

        });
  }
}
