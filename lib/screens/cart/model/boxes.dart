import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:hive/hive.dart';
import 'package:ilmercato/main.dart';
import 'package:ilmercato/screens/cart/model/shoppingcartH.dart';
import 'package:ilmercato/screens/order/model/OrderModel.dart';


class ShopCartsH  {

  var boxes = getShoppingDetail().values.toList();

  static Box<ShoppingCartH> getShoppingDetail()=>
      Hive.box<ShoppingCartH>('ShopCartsH');


   int get itemCount {
    return Hive.box<ShoppingCartH>('ShopCartsH').length;
  }

  double get totalAmount {
    double total = 0.000;
    double total1 = 0.000;
    boxes.forEach((value) => total += double.parse(value.rate.toStringAsFixed(3)) * int.parse(value.quantity.toString()));
    total1 = total + (total *10)/100;
    return total1;
  }


  double get finalAmount {
    double total = 0.000;

    if(double.parse(ShopCartsH().totalAmount.toStringAsFixed(3)) <=11.000) {
      prefs!.setDouble("shipping",1.500).toString();
      if (prefs!.getDouble("discount").toString() == 'null') {
        total = ShopCartsH().totalAmount + 1.500;

      } else {
        total = ShopCartsH().totalAmount + 1.500 -
            double.parse(prefs!.getDouble("discount").toString());
      }
    }else{
      prefs!.setDouble("shipping",0).toString();
      if (prefs!.getDouble("discount").toString() == 'null') {
        total = ShopCartsH().totalAmount;
      } else {
        total = ShopCartsH().totalAmount -
            double.parse(prefs!.getDouble("discount").toString());
      }
    }
    return total;
  }


  int get totalQuantity {
    var total = 0;
    boxes.forEach((value) => total += int.parse(value.quantity.toString()));
    return total;
  }

  // int get productID {
  //   int pid = 0;
  //   boxes.forEach((value) => pid = int.parse(value.pid.toString()) );
  //   return pid;
  // }


   List<LineItems> get proList {
     List<LineItems> line =[];
   boxes.forEach((value) =>line = [LineItems(
     productId : int.parse(value.pid.toString()),
     quantity: int.parse(value.quantity.toString()),
         variationId: 0
    )]
   );
    return line;
  }

   incrementProduct(int product)  {
    boxes[product].quantity++;
    boxes[product].save();
  }

   decreaseProduct(int product) {
     if(boxes[product].quantity==1){
       boxes[product].delete();
    }
    boxes[product].quantity--;
    boxes[product].save();
 }

    deleteProduct(int product) {
      boxes[product].delete();

    }

  List<int> get productID {
    List<int> pid = [];
    boxes.forEach((value) => pid.add(value.pid));
    return pid;
  }


  Future addToBag(int memId,String pSku, int productId, String productName,
      String productImage, double price, int quantity, String brand, String extra) async {

    int index1 = productID.indexOf(productId);

    if (productID.contains(productId) == true ) {

      int quan = boxes[index1].quantity;

      ShoppingCartH ShoppingCartH1 = ShoppingCartH(
            memId: memId,
            pSku: pSku,
            pid: productId,
            proName: productName,
            proImage: productImage,
            rate: price,
            quantity: quantity + quan,
            brand: brand,
          discount : extra
        );
        final boxes11 = getShoppingDetail();
        boxes11.putAt(index1, ShoppingCartH1);

      } else {
        ShoppingCartH ShoppingCartH1 = ShoppingCartH(
          memId: memId,
          pid: productId,
          pSku: pSku,
          proName: productName,
          proImage: productImage,
          rate: price,
          quantity: quantity,
          brand: brand,
          discount:extra,
        );
        final boxes = getShoppingDetail();
        boxes.add(ShoppingCartH1);
      }
    }


}
