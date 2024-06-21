import 'package:ilmercato/Api/LoginApi.dart';
import 'package:ilmercato/components/default_button.dart';
import 'package:ilmercato/constants.dart';
import 'package:flutter/material.dart';
import 'package:ilmercato/main.dart';
import 'package:ilmercato/screens/checkout/model/deliveryModel.dart';
import 'package:ilmercato/screens/dashboard/model/CustomerOrderModel.dart';
import 'package:ilmercato/screens/payment/payment.dart';


class Body1 extends StatefulWidget {
  const Body1({Key? key}) : super(key: key);

  @override
  _Body1State createState() => _Body1State();
}
class _Body1State extends State<Body1> {

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<CustomerOrderModel>>(
      future: LoginApi.myOrdersApi(),
      builder: (context, snapshot) {
        // Checking if future is resolved or not
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData) {

            List<CustomerOrderModel>? deliveryDetail = snapshot.data as List<CustomerOrderModel>;
           if(snapshot.data!.length !=0) {
             return Container(
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(30),
                   topRight: Radius.circular(30),
                 ),
               ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 15, top: 15),
                     child: Text("Delivery Address", style: listTextLight,),
                   ),
                   ListView.builder(
                       shrinkWrap: true,
                       scrollDirection: Axis.vertical,
                       physics: ScrollPhysics(),
                       itemCount: 1,
                       itemBuilder: (context, index1) {
                         int len = deliveryDetail.length;
                         int index = len - 1;

                         DeliveryModel model = DeliveryModel(
                             firstName: deliveryDetail[index].billing!.firstName
                                 .toString(),
                             username: prefs!.getString('username').toString(),
                             billing1: Billing1(
                               firstName: deliveryDetail[index].billing!
                                   .firstName.toString(),
                               phone: deliveryDetail[index].billing!.phone
                                   .toString(),
                               address1: deliveryDetail[index].billing!.address1
                                   .toString(),
                               city: deliveryDetail[index].billing!.city
                                   .toString(),
                               state: deliveryDetail[index].billing!.state
                                   .toString(),
                               country: deliveryDetail[index].billing!.country
                                   .toString(),
                               postcode: deliveryDetail[index].billing!.postcode
                                   .toString(),
                               email: deliveryDetail[index].billing!.email
                                   .toString(),
                             ),
                             shipping1: Shipping1(
                               firstName: deliveryDetail[index].shipping!
                                   .firstName.toString(),
                               address1: deliveryDetail[index].shipping!
                                   .address1.toString(),
                               city: deliveryDetail[index].shipping!.city
                                   .toString(),
                               state: deliveryDetail[index].shipping!.state
                                   .toString(),
                               country: deliveryDetail[index].shipping!.country
                                   .toString(),
                               postcode: deliveryDetail[index].shipping!
                                   .postcode.toString(),
                             )
                         );

                         /* Start Product Design */

                         return Padding(
                           padding: const EdgeInsets.all(10.0),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               //    SizedBox(height: 10,),
                               Row(
                                 children: [
                                   Text("${deliveryDetail[index].billing!
                                       .firstName}", style: headingRate,),
                                   Spacer(),
                                   SmallColorDefaultButton(
                                     text: "Select",
                                     press: () {
                                       Navigator.push(
                                         context,
                                         MaterialPageRoute(
                                           builder: (context) =>
                                               Payment(deliveryModel: model),
                                         ),
                                       );
                                     },
                                   ),

                                 ],
                               ),
                               SizedBox(height: 10,),
                               Text("${deliveryDetail[index].shipping!
                                   .address1}, ${deliveryDetail[index].shipping!
                                   .city}\n${deliveryDetail[index].shipping!
                                   .state}, ${deliveryDetail[index].shipping!
                                   .postcode}", style: smallListText,),
                               Text("Phone :- ${deliveryDetail[index].billing!
                                   .phone}", style: smallListText,),
                               Text("Email :- ${deliveryDetail[index].billing!
                                   .email}", style: smallListText,),
                               Divider(thickness: 1, color: kTextColor,
                               )

                             ],),
                         );
                         /* End Product Design */
                       }),
                 ],
               ),
             );
           }
          } else if (snapshot.hasError) {
            return Container(
                alignment: AlignmentDirectional.center,
                child: Text("Technical Issue! Please Try Again"));
          }
        }
        return Container(
            alignment: AlignmentDirectional.center,
            child: const CircularProgressIndicator.adaptive());
      },

    );

  }
}
