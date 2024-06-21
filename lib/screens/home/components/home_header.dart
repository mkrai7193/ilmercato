import 'package:flutter/material.dart';
import 'package:ilmercato/constants.dart';


Widget appBarWidget(context) {
  return Container(
    child: AppBar(

      iconTheme: IconThemeData(color:kAppBarIconColor,opacity: 1),
      backgroundColor:kAppBarColor,
      title: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 8.0,right: 8.0),
              child: Image.asset("assets/images/logo.png",
                height: 40,
              ),
            ),
            Text("ilmercato Jewellery",
              style: TextStyle(
                fontWeight: FontWeight.w500,color: kAppBarIconColor,
              ),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        // IconButton(
        //   onPressed: () {
        //     showSearch(context:context,delegate:DataSearch());
        //   },
        //   icon: SvgPicture.asset("assets/icons/Bell.svg",color: kAppBarIconColor,),
        // ),
        // Stack(
        //     children:[
        //       IconButton(
        //         icon: SvgPicture.asset("assets/icons/Cart Icon.svg",
        //             color:kAppBarIconColor),
        //         onPressed: () {
        //           Navigator.push(context, MaterialPageRoute(builder: (context)=> CartScreen()));
        //         },
        //       ),
        //       (ShopCartsH().itemCount>0)?Positioned(
        //           top: 5,
        //           right: 5,
        //           child: Container(
        //             decoration: BoxDecoration(
        //                 borderRadius: BorderRadius.all(Radius.circular(10))
        //             ),
        //             child: Padding(
        //                 padding: const EdgeInsets.all(3.0),
        //                 child: Text(ShopCartsH().itemCount.toString(),style: TextStyle(color: kTextColor),)),
        //           ))
        //           :Positioned(
        //           top: 5,right: 5,
        //           child: Container(
        //             decoration: BoxDecoration(
        //                 borderRadius: BorderRadius.all(Radius.circular(10))
        //             ),
        //             child:Padding(
        //                 padding: const EdgeInsets.all(3.0),
        //                 child: Text("0",
        //                     style: TextStyle(color:kTextColor))),
        //           ))
        //     ]),
        // IconButton(
        //   onPressed: () {
        //       showSearch(context:context,delegate:DataSearch());
        //   },
        //   icon: SvgPicture.asset("assets/icons/Search Icon.svg",color: kAppBarIconColor),
        // )

      ],
    ),
  );
}
/*

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Flex(
              direction: Axis.horizontal,   // this is unique
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              verticalDirection: VerticalDirection.down,
              textDirection: TextDirection.ltr,
              children: <Widget>[
                Image(image: AssetImage("assets/images/logo.jpg"),height: 40,),
                SizedBox(width: 10,),
                Text("ilmercato",style:TextStyle(fontSize: 22, color: Colors.black),),
             ]
          ),
          SizedBox(width: 50,),
          Expanded(
            flex: 1,
            child: IconBtnWithCounter(
              svgSrc: "assets/icons/Cart Icon.svg",
              press: () => Navigator.pushNamed(context, CartScreen.routeName),
            ),
           ),
          Expanded(
            flex: 1,
          child:IconBtnWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            numOfitem: 3,
            press: () {},
          ),
          ),
          Expanded(
            flex: 1,
            child: SearchField(),
          ),
        ],
      ),
    );
  }
}

 */