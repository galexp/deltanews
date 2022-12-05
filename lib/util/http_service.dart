import 'package:flutter/material.dart';

class HttpService{

  static const String base_url = "https://emmi-softwaretrack.online/api/";

  static const String register = base_url + "register";

  void showMessage(String message, BuildContext context){
    var snackBar = SnackBar(
      content: Text(message),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

}