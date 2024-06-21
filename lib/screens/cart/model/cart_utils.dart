// import 'package:burger_app/screens/cart/model/ShoppingCartH.dart';
// import 'package:flutter/material.dart';
// import 'package:uuid/uuid.dart';
// import 'package:provider/provider.dart';
//
// class Cart {
//   final String id;
//   final int memId;
//   final int storeId;
//   final int pid;
//   final String proName;
//   final String proImage;
//   final double rate;
//   late int quantity;
//   final String subAddon;
//   final String sug1;
//   final String sug2;
//
//
//   Cart({
//     required this.id,
//     required this.memId,
//     required this.storeId,
//     required this.pid,
//     required this.proName,
//     required this.proImage,
//     required this.rate,
//     required this.quantity,
//     required this.subAddon,
//     required this.sug1,
//     required this.sug2,
//   });
// }
//
// // class Cart with ChangeNotifier {
// //   List<CartM> products = [];
// //
// //   double get total {
// //     return products.fold(0.0, (double currentTotal, CartM nextProduct) {
// //       return currentTotal + nextProduct.rate;
// //     });
// //   }
// //
// //   void addToCart(CartM product) => products.add(product);
// //   void removeFromCart(CartM product) {
// //     products.remove(product);
// //     notifyListeners();
// //   }
// // }
// class Carts with ChangeNotifier {
//
//   final uuid = Uuid();
//
//   List<Cart> items =[];
//
//   int get itemCount {
//     return items.length;
//   }
//
//
//   double get totalAmount {
//     var total = 0.0;
//     items.forEach((value) => total += value.rate * value.quantity);
//     return total;
//   }
//
//    addItem(int memberId,int storeId,int productId,String productName,String productImage, double price,int quantity,String addOn,String sug1,String sug2) async{
//
//     Cart cartItem =Cart(
//         id: uuid.v1(),
//         memId: memberId,
//         storeId: storeId,
//         pid: productId,
//         proName: productName,
//         proImage: productImage,
//         rate: price,
//         quantity: quantity,
//         subAddon: addOn,
//         sug1: sug1,
//         sug2: sug2
//     );
//
//     if(items.contains(cartItem.subAddon.toString()))
//       {
//         if(items.contains(cartItem.pid))
//           {
//
//           //  incrementProduct(items.indexOf());
//           }
//       }else {
//         items.add(cartItem);
//     }
//
//
//     // if (_items.containsKey(productId)) {
//     //
//     //   _items.update(
//     //     productId.toString() ,
//     //         (old) => Cart(
//     //       id: old.id,
//     //       name: old.name,
//     //       rate: old.rate,
//     //       subAddon: old.subAddon,
//     //       quantity: old.quantity + 1,
//     //     ),
//     //   );
//     // } else {
//     //   _items.putIfAbsent(
//     //     productId.toString(),
//     //         () => Cart(
//     //           id: uuid.v1(),
//     //           name: productName,
//     //           rate: price,
//     //           subAddon: addOn,
//     //           quantity: quantity,
//     //     ),
//     //   );
//     // }
//     notifyListeners();
//   }
//
//   void incrementProduct(int product) {
//
//       items[product].quantity++;
//     notifyListeners();
//   }
//
//   void decreaseProduct(int product) {
//       items[product].quantity--;
//
//     notifyListeners();
//   }
//
//
//
//
//
//
//
//
//
//
//
//   void removeItem(int it) {
//     items.remove(it);
//     notifyListeners();
//   }
//   void removeSingleItem(int it) {
//   //  if (!items.containsKey(productId)) return;
//     if (items[it].quantity > 2) {
//
//       // items.update(
//       //     productId,
//       //         (old) => Cart(
//       //       id: old.id,
//       //           name: old.name,
//       //           rate: old.rate,
//       //           subAddon: old.subAddon,
//       //           quantity: old.quantity - 1,
//       //     ));
//
//     } else {
//       items.remove(it);
//
//     }
//     notifyListeners();
//   }
//   void clear() {
//     items = [];
//     notifyListeners();
//   }
// }
