// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:ilmercato/components/rounded_icon_btn.dart';
// import 'package:ilmercato/screens/details/model/productDetailModel.dart';
//
// import '../../../constants.dart';
// import '../../../size_config.dart';
//
// class ColorDots extends StatefulWidget {
//   const ColorDots({
//     Key? key,
//     required this.product,
//   }) : super(key: key);
//
//   final Records product;
//
//   @override
//   ColorDotsState createState() => ColorDotsState();
// }
//
// class ColorDotsState extends State<ColorDots> {
//   var controller = TextEditingController();
//
//   @override
//   void initState() {
//     controller.text = "1";
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // Now this is fixed and only for demo
//     int selectedColor = 3;
//     return Padding(
//       padding:
//           EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
//       child: Row(
//         children: [
//           // ...List.generate(
//           //   product.colors.length,
//           //   (index) => ColorDot(
//           //     color: product.colors[index],
//           //     isSelected: index == selectedColor,
//           //   ),
//           // ),
//
//           RoundedIconBtn(
//             icon: Icons.remove,
//             press: () {
//               int currentValue = int.parse(controller.text);
//               setState(() {
//                 currentValue--;
//                 controller.text = (currentValue > 0 ? currentValue : 0)
//                     .toString(); // decrementing value
//               });
//             },
//           ),
//           SizedBox(width: getProportionateScreenWidth(20)),
//           Expanded(
//             flex: 1,
//             child: TextFormField(
//               inputFormatters: [FilteringTextInputFormatter.digitsOnly],
//               textAlign: TextAlign.center,
//               style: TextStyle(color: Colors.black),
//               decoration: InputDecoration(
//                 contentPadding: EdgeInsets.all(1.0),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(5.0),
//                 ),
//               ),
//               controller: controller,
//             ),
//           ),
//           SizedBox(width: getProportionateScreenWidth(20)),
//           RoundedIconBtn(
//             icon: Icons.add,
//             showShadow: true,
//             press: () {
//               int currentValue = int.parse(controller.text);
//               setState(() {
//                 currentValue++;
//                 controller.text =
//                     (currentValue).toString(); // incrementing value
//               });
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class ColorDot extends StatelessWidget {
//   const ColorDot({
//     Key? key,
//     required this.color,
//     this.isSelected = false,
//   }) : super(key: key);
//
//   final Color color;
//   final bool isSelected;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(right: 2),
//       padding: EdgeInsets.all(8),
//       height: 40,
//       width: 40,
//       decoration: BoxDecoration(
//         color: Colors.transparent,
//         border:
//             Border.all(color: isSelected ? kPrimaryColor : Colors.transparent),
//         shape: BoxShape.circle,
//       ),
//       child: DecoratedBox(
//         decoration: BoxDecoration(
//           color: color,
//           shape: BoxShape.circle,
//         ),
//       ),
//     );
//   }
// }
