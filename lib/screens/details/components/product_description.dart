import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ilmercato/components/default_button.dart';
import 'package:ilmercato/screens/cart/cart_screen.dart';
import 'package:ilmercato/screens/cart/model/boxes.dart';
import 'package:ilmercato/screens/product/model/NewProductCategoryModel.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class ProductDescription extends StatefulWidget {
  const ProductDescription({
    Key? key,
    required this.product,
    this.pressOnSeeMore,
  }) : super(key: key);

  final Records product;
  final GestureTapCallback? pressOnSeeMore;

  @override
  _ProductDescriptionState createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {


  var _controller = TextEditingController();

  @override
  void initState() {
    _controller.text = "1";
    super.initState();
  }

  Widget _quantityTextField() {
    return Container(
      width:180,
      child: Row(
        children: <Widget>[
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color:kButtonBgColor,
              borderRadius: BorderRadius.circular(10.0),

            ),
            child : InkWell(
              child: Icon(
                Icons.remove,
                size: 25.0,
                color: kSecondaryColor,
              ),
              onTap: () {
                int currentValue = int.parse(_controller.text);
                setState(() {
                  currentValue--;
                  _controller.text =
                      (currentValue > 1 ? currentValue : 1).toString();

                  //    ShopCartsH().incrementProduct(widget.index);
                });
              },
            ),
          ),
          Expanded(
            flex: 3,
            child: TextFormField(
              enabled: false,
              textAlign: TextAlign.center,
              style: TextStyle(color: kDarkTextColor),
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
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color:kButtonBgColor,
              borderRadius: BorderRadius.circular(10.0),

            ),
            child :  InkWell(
              child: Icon(
                Icons.add,
                size: 25.0,
                color: kSecondaryColor,
              ),
              onTap: () {
                int currentValue = int.parse(_controller.text);
                setState(() {
                  //      ShopCartsH().decreaseProduct(widget.index);
                  currentValue++;
                  _controller.text = (currentValue).toString();
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  double price =0.000;


  @override
  Widget build(BuildContext context) {
    String htmlContent = widget.product.description.toString();

    String pDescr = htmlContent.replaceAll('\n', '<br>');

if(widget.product.saleprice ==0){
  price = double.parse(widget.product.regularprice!.toStringAsFixed(3));
}else{
  price = double.parse(widget.product.saleprice!.toStringAsFixed(3));
}
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "${widget.product.pname} ",
          style: mainHeadline,
        ),


        if("${widget.product.cname}" != "")
          SizedBox(height: 10,),
        if("${widget.product.cname}" != "")
          Text(
            "${widget.product.cname} ",
            style: listTextLight,
          ),


        if(widget.product.regularprice != 0)
          SizedBox(height: 10,),
        if(widget.product.regularprice != 0)

          Row(
            children: [
              if(widget.product.saleprice != 0)
                Text(
                  "BD ${widget.product.regularprice!.toStringAsFixed(3)}",
                  style:TextStyle(decoration: TextDecoration.lineThrough,fontSize: 16),
                ),
              if(widget.product.saleprice !=0)
                SizedBox(width: 10,),
              (widget.product.saleprice !=0)?
              Text(
                "BD ${widget.product.saleprice!.toStringAsFixed(3)}",
                style: headingRate,
              ): Text(
                "BD ${widget.product.regularprice!.toStringAsFixed(3)}",
                style: headingRate,
              ),
              Spacer(),
              // Row(
              //   children: [
              //     Icon(Icons.star,color:Colors.green,),
              //     Text(
              //       "${widget.product.averageRating} (${widget.product.ratingCount})",
              //       style: headingRate,
              //     ),
              //   ],
              // ),

            ],
          ),

        if (widget.product.description != '')
          SizedBox(height: SizeConfig.screenHeight * 0.01),
        if (widget.product.description != '')
          Text("Description", style: mainHeadline),
        if (widget.product.description != '')
          SizedBox(height: SizeConfig.screenHeight * 0.01),
        if (widget.product.description != '')
          HtmlWidget(
            '''${pDescr.toString()}''',

            customStylesBuilder: (element) {
              if (element.classes.contains('p')) {
                return {'color': 'red'};
              }
              return null;
            },

            textStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: kDescriptionTextColor,
            ),

          ),

        SizedBox(height: 20),
        _quantityTextField(),

        SizedBox(height: 30),

        Row(
          children: [
            MediumColorDefaultButton(
              text: "ADD TO CART",
              press: (){

                ShopCartsH().addToBag(
                    1,
                    "${widget.product.sku}",
                    int.parse(widget.product.id.toString()),
                    "${widget.product.pname}",
                    "${widget.product.images}",
                    price,
                    int.parse(_controller.text.toString()),
                    "${widget.product.brand}",
                    "0");

                Fluttertoast.showToast(msg: "${widget.product.pname} is added Successfully in Cart");
              },
            ),
            Spacer(),

            MediumDefaultButton(
              text: "BUY NOW",
              press: (){

                ShopCartsH().addToBag(
                    1,
                    "${widget.product.sku}",
                    int.parse(widget.product.id.toString()),
                    "${widget.product.pname}",
                    "${widget.product.images}",
                    price,
                    int.parse(_controller.text.toString()),
                    "${widget.product.brand}",
                    "0");

                Fluttertoast.showToast(msg: "${widget.product.pname} is added Successfully in Cart");
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

      ],
    );
  }
}
