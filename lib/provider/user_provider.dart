import 'package:deltanews/model/user.dart';
import 'package:flutter/foundation.dart';

class UserProvider with ChangeNotifier{

  var user = "";

  void setUser(User userData){
    user = userData.name;
    notifyListeners();
  }

}