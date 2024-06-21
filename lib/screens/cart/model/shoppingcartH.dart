import 'package:hive/hive.dart';

part 'shoppingcartH.g.dart';

@HiveType(typeId: 0)
class ShoppingCartH extends HiveObject {


  @HiveField(0)
  late int memId;
  @HiveField(1)
  late String pSku;
  @HiveField(2)
  late int pid;
  @HiveField(3)
  late String proName;
  @HiveField(4)
  late String proImage;
  @HiveField(5)
  late double rate;
  @HiveField(6)
  int quantity;
  @HiveField(7)
  late String discount;
  @HiveField(8)
  late String brand;



  ShoppingCartH({
    required this.memId,
    required this.pSku,
    required this.pid,
    required this.proName,
    required this.proImage,
    required this.rate,
    required this.quantity,
    required this.discount,
    required this.brand,

  });

}

