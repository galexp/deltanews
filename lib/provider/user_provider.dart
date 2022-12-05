import 'package:deltanews/model/user.dart';
import 'package:flutter/foundation.dart';

class UserProvider with ChangeNotifier{

 
  // User _user =  User(name: "", email: "", password: "", token: "");

  // User get user => _user;

  // void setUser(User user){
  //   _user = user;
  //   notifyListeners();
  // }

  var user = "";

  void setUser(String name){
    user = name;
    notifyListeners();
  }

}