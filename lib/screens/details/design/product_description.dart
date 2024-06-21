import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

class ProductDescriptionDesign extends StatefulWidget {
  const ProductDescriptionDesign({
    Key? key,
    required this.product,
    this.pressOnSeeMore,
  }) : super(key: key);

  final  product;
  final GestureTapCallback? pressOnSeeMore;

  @override
  _ProductDescriptionDesignState createState() => _ProductDescriptionDesignState();
}

class _ProductDescriptionDesignState extends State<ProductDescriptionDesign> {

  var _controller = TextEditingController();

  @override
  void initState() {
    _controller.text = "0";
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
                _controller.text = (currentValue).toString();
                //   ShopCartsH().incrementProduct(widget.index);
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
                    //   ShopCartsH().decreaseProduct(widget.index);
                    currentValue++;
                    _controller.text =
                        (currentValue > 0 ? currentValue : 0).toString();
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "${widget.product[0]['name']} ",
          style: mainHeadline,
        ),


        if("${widget.product[0]['category']}" != "")
        SizedBox(height: 10,),
        if("${widget.product[0]['category']}" != "")
        Text(
          "${widget.product[0]['category']} ",
          style: listTextLight,
        ),


        if("${widget.product[0]['discountPrice']}" != "0")
        SizedBox(height: 10,),
        if("${widget.product[0]['discountPrice']}" != "0")
        Row(
          children: [
            Text(
              "${widget.product[0]['price']}",
               style:TextStyle(decoration: TextDecoration.lineThrough,fontSize: 16),
            ),
            SizedBox(width: 10,),
            Text(
              "${widget.product[0]['discountPrice']}",
              style: headingRate,
            ),
           Spacer(),
            Row(
              children: [
                Icon(Icons.star,color:Colors.green,),
                Text(
                  "${widget.product[0]['rating']} (${widget.product[0]['user']})",
                  style: headingRate,
                ),
              ],
            ),

          ],
        ),

        if (widget.product[0]['description'] != '')
          SizedBox(height: SizeConfig.screenHeight * 0.01),
        if (widget.product[0]['description'] != '')
          Text("Description", style: mainHeadline),
        if (widget.product[0]['description'] != '')
          SizedBox(height: SizeConfig.screenHeight * 0.01),
        if (widget.product[0]['description'] != '')
          HtmlWidget(
            '''${widget.product[0]['description']}''',
            textStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: kDescriptionTextColor,
            ),
          ),

        SizedBox(height: 20),
        _quantityTextField(),

        //
        // if (widget.product[0]['size'] != '')
        //   SizedBox(height: SizeConfig.screenHeight * 0.01),
        // if (widget.product[0]['size'] != '')
        //   Text("Size", style: mainHeadline),
        // if (widget.product[0]['size'] != '')
        //   SizedBox(height: SizeConfig.screenHeight * 0.02),

      ],
    );
  }
}
