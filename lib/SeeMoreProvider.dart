import 'package:flutter/foundation.dart';



class SeeMoreProvider extends ChangeNotifier{
  bool more=false;
  void changbooltofalse(){
    more=false;
    notifyListeners();

  }
  void changbooltotrue(){
    more=true;
    notifyListeners();

  }

}