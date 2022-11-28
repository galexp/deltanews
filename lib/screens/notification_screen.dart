import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: true,
            title: const Text(
              "Notifications",
              style: TextStyle(color: Colors.black),
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            )),
        body: hasNotification()
            ? Container()
            : Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                    alignment: Alignment.center,
                    height: 200,
                    child: const Image(
                        image: AssetImage('assets/images/notify.png'))),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: const Text(
                    'You have no notification',
                    style: TextStyle(
                        fontFamily: "Lato", fontSize: 20, color: Colors.blue),
                  ),
                ),
              ]));
  }

  bool hasNotification() {
    int items = 0;
    if (items > 0) {
      return true;
    } else {
      return false;
    }
  }
}
