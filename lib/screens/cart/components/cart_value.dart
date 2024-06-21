import 'package:flutter/material.dart';
import 'package:ilmercato/constants.dart';
import 'package:ilmercato/screens/cart/cart_screen.dart';
import 'package:ilmercato/screens/cart/model/boxes.dart';
import 'package:ilmercato/screens/cart/model/shoppingcartH.dart';
import 'package:ilmercato/screens/details/details_screen.dart';

class CartValue extends StatefulWidget {

  final ShoppingCartH cart;
  final int index;

  const CartValue({
    Key? key,
    required this.cart,required this.index,
  }) : super(key: key);

  @override
  State<CartValue> createState() => _CartValueState();
}

class _CartValueState extends State<CartValue> {

  var _controller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    _controller.text = widget.cart.quantity.toString();
    super.initState();
  }

  Widget _quantityTextField(int index) {
    return Container(
      width:120,
      height: 40,
      decoration: BoxDecoration(
        color: kButtonBgColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: <Widget>[
          Container(
            width: 30,
            height: 20,
            child : InkWell(
              child: Icon(
                Icons.remove,
                size: 18.0,
                color: kSecondaryColor,
              ),
              onTap: () {
                int currentValue = int.parse(_controller.text);
                ShopCartsH().decreaseProduct(widget.index);
                setState(() {
                  currentValue--;
                  _controller.text =
                      (currentValue > 0 ? currentValue : 0)
                          .toString();
                });
                // if(currentValue > 0)
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => CartScreen()));
              },
            ),
          ),
          Expanded(
            flex: 3,
            child: TextFormField(
              enabled: false,
              textAlign: TextAlign.center,
              style: TextStyle(color: kSecondaryColor),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(8.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              controller: _controller,
            ),
          ),
          Container(
            width: 30,
            height: 20,

            child :  InkWell(
              child: Icon(
                Icons.add,
                size: 18.0,
                color: kSecondaryColor,
              ),
              onTap: () {

                int currentValue = int.parse(_controller.text);
                ShopCartsH().incrementProduct(widget.index);
                setState(() {
                  currentValue++;
                  _controller.text = (currentValue)
                      .toString();

                });
              },
            ),
          ),
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      decoration: BoxDecoration(
          color: kBackgroundColor,
          border: Border(bottom: BorderSide(width: 0.5,color: kTextColor))
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10,bottom: 10),
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
                          pid: widget.cart.pid.toString(),
                          pname:widget.cart.proName.toString()
                        )));
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 10,left: 10),
                child: Container(
                  color: kSecondaryColor,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Image.network(
                      "${widget.cart.proImage}",
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
              width: MediaQuery.of(context).size.width*0.67,
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
                                  pid: widget.cart.pid.toString(),
                                  pname: widget.cart.proName.toString(),
                                )));
                      },
                      child: Text("${widget.cart.proName}",maxLines: 1,style: listTextColor,)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("BD ${widget.cart.rate.toStringAsFixed(3)}", maxLines: 1, style: listTextColor,),
                            ],
                          )
                      ),
                      Container(
                        child: Column(
                          children: [
                            _quantityTextField(widget.index),
                            GestureDetector(
                              onTap: (){
                                showDialog(
                                  context: context,
                                  builder: (ctx) =>
                                      AlertDialog(
                                        title: Text('Are you sure?',style: TextStyle(color: kSecondaryColor)),
                                        content: Text(
                                            'Do you want to remove the item from the cart?',style: TextStyle(color: kSecondaryColor),),
                                        actions: <Widget>[
                                          TextButton(
                                            child: Text('No' ,style: TextStyle(color: kSecondaryColor)),
                                            onPressed: () {
                                              Navigator.of(context).pop(false);
                                            },

                                          ),
                                          TextButton(
                                            child: Text('Yes',style: TextStyle(color: kSecondaryColor)),
                                            onPressed: () {
                                              ShopCartsH().deleteProduct(widget.index);
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>CartScreen()));
                                            },
                                          ),
                                        ],
                                      ),
                                );
                              },
                              child: Row(
                                children: [
                                  Icon(Icons.delete,color: kTextColor,size: 15,),
                                  Text("Remove",style: smallListTextBlack,),

                                ],
                              ),
                            )
                          ],
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
  }
}
