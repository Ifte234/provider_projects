import 'package:flutter/cupertino.dart';
class CountProvider with ChangeNotifier{

   int _count = 0;
   int get count => _count;
   void setCounter(){
      _count++ ;
      notifyListeners();

   }
}