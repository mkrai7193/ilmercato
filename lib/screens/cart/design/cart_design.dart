import 'package:flutter/material.dart';
import 'package:ilmercato/constants.dart';
import 'package:ilmercato/screens/details/details_screen.dart';

class CartDesign extends StatefulWidget {
  const CartDesign();

  @override
  State<CartDesign> createState() => _CartDesignState();
}

class _CartDesignState extends State<CartDesign> {

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

  var _controller = TextEditingController();

  @override
  void initState() {
    _controller.text = "1";
    super.initState();
  }

  Widget _quantityTextField() {
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
    return  ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
        itemCount: productDetail.length,
        itemBuilder: (context, index) {

          /* Start Product Design */

          return Container(
            height: 110,
            decoration: BoxDecoration(
              color: kBackgroundColor,
          //    color: (index % 2 == 0) ? kBackgroundColor : kBackground2Color,
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
                                  pid: productDetail[index]['id'].toString(),
                                pname: productDetail[index]['name'].toString(),)));
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
                    width: MediaQuery.of(context).size.width*0.75,
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("${productDetail[index]['discountPrice']}", maxLines: 1, style: listTextColor,),
                                  ],
                                )
                            ),
                            GestureDetector(
                              child: Container(
                                child: Column(
                                  children: [
                                    _quantityTextField(),
                                    Row(
                                      children: [
                                        Icon(Icons.delete,color: kTextColor,size: 15,),
                                        Text("Remove",style: smallListTextBlack,)
                                      ],
                                    )
                                  ],
                                ),
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
