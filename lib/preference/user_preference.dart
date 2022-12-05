import 'package:deltanews/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/user.dart';

class UserPreference{

  Future<bool> saveUser(User user) async{

    final SharedPreferences pref = await SharedPreferences.getInstance();

    pref.setString("name", user.name);
    pref.setString("token", user.token);

    return pref.commit();
  }

  Future<User> getUser() async{

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String user = prefs.getString("name").toString();
    String token = prefs.getString("token").toString();

   
    return User(name: user, token: token);
  }

  void removeUser() async{

    final SharedPreferences preferences = await SharedPreferences.getInstance();

    preferences.remove("name");
    preferences.remove("token");
    
  }

  Future<String> getToken() async{

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String token = prefs.getString("token").toString();

    return token;
  }

}