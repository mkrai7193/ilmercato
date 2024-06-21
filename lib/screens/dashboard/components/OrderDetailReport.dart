import 'package:flutter/material.dart';
import 'package:ilmercato/constants.dart';
import 'package:ilmercato/screens/dashboard/model/OrderDetailModel.dart';
import 'package:ilmercato/screens/order/model/OrderModel.dart';


class OrderDetailReport extends StatelessWidget {
  final OrderDetailModel order;
  const OrderDetailReport({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(width: 1,color: kDarkTextColor)
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                  child: Row(
                    children: [
                      Text("Date:",style: smallListTextBlack1,),
                      Spacer(),
                      Text("${order.dateCreated}",style: smallListTextBlackBold,),
                     ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                  child: Row(
                    children: [
                      Text("Order Status :",style: smallListTextBlack1,),
                      Spacer(),
                      Text("${order.status}",style: smallListTextBlackBold,),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                  child: Row(
                    children: [
                      Text("Order Key :",style: smallListTextBlack1,),
                      Spacer(),
                      Text(" ${order.orderKey}",style: smallListTextBlackBold,),
                    ],
                  ),
                ),

                Divider(thickness: 2,color: kDarkTextColor,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width*1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text("Shipping To",style: listText,),
                        SizedBox(height: 10,),
                        Text("${order.shipping!.firstName}",style: smallListTextBlack1,),
                        Text("${order.shipping!.address1},",style: smallListTextBlack1,),
                        Text("${order.shipping!.city}, ${order.shipping!.state},",style: smallListTextBlack1,),
                        Text("${order.shipping!.country}-${order.shipping!.postcode},",style: smallListTextBlack1,),
                        Text("${order.billing!.phone}",style: smallListTextBlack1,),
                        Text("${order.billing!.email}",style: smallListTextBlack1,),
                      ],
                    ),
                  ),
                ),
                // Divider(thickness: 2,color: kDarkTextColor,),
                // Padding(
                //   padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10),
                //   child: Container(
                //     width: MediaQuery.of(context).size.width*1,
                //     child: Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //
                //       children: [
                //         Text("Dealer To",style: headingStyle,),
                //         SizedBox(height: 10,),
                //         Text("${order.dealerName}",style: listText,),
                //         Text("${order.dealerAdd},${order.dealerCity},",style: largeListText,),
                //         Text("${order.dealerState}-${order.dealerPincode},",style: largeListText,),
                //         Text("${order.dealerMob}",style: largeListText,),
                //         //  Text("${order}",style: largeListText,),
                //       ],
                //     ),
                //   ),
                // ),
                Divider(thickness: 2,color: kDarkTextColor,),
                Column(
                  children: [

                    Container(
                      height: 30,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child:Row(
                        children: [
                          Text("Product Description",style: listText,),
                          Spacer(),
                          Text("Rate",style: listText,),
                        ],
                      )

                    ),

                   Divider(thickness: 1,color: kDarkTextColor,),
                    ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemCount: order.lineItems!.length,
                        itemBuilder: (BuildContext context,int index) {
                          return Container(
                            decoration: BoxDecoration(
                                border: Border(
                                  bottom:BorderSide(
                                      width: 1,color: kDarkTextColor
                                  ) ,
                                )
                            ),
                            child: ListTile(
                              title: Text("${order.lineItems![index].name}", style: smallListTextBlack1),
                               subtitle: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text("Quantity :- ${order.lineItems![index].quantity} ", style: smallListTextBlack1),
                                   Text("Price :- BD ${order.lineItems![index].price} ", style: smallListTextBlack1),
                                 ],
                               ),

                               trailing: Text("BD ${order.lineItems![index].subtotal}", style: listText),
                            ),
                          );
                        }),
                 ],
               ),



                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width*1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("Final Price : BD ${order.total}/-(inc tax)",style: smallListTextBlack1,),

                      ],
                    ),
                  ),
                ),


              ],
            ),
          ),
        ),
      );

  }
}

