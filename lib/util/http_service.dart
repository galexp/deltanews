import 'package:flutter/material.dart';

class HttpService{

  static const String base_url = "https://emmi-softwaretrack.online/api/";

  static const String register = base_url + "register";

  static const String login = "${base_url}login";

  static const String blog = "${base_url}blogs";

  void showMessage(String message, BuildContext context){
    var snackBar = SnackBar(
      content: Text(message),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

}