import 'package:flutter/material.dart';

class AppInfo extends ChangeNotifier
{
   double? goldRate, silverRate;

  void updateGoldRate(gold)
  {
    goldRate =gold;
    notifyListeners();
  }

   void updateSilverRate(silver)
   {
     silverRate =silver;
     notifyListeners();
   }

}