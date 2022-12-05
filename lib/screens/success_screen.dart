import 'package:deltanews/model/user.dart';
import 'package:deltanews/provider/user_provider.dart';
import 'package:deltanews/screens/search_screen.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              alignment: Alignment.center,
              height: 200,
              child:
                  const Image(image: AssetImage('assets/images/success.png'))),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: const Text(
              'Delta News',
              style: TextStyle(fontFamily: "Lato", fontSize: 30),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
            child: const Text(
              'Congratulations!',
              style: TextStyle(
                  fontFamily: "Lato", fontSize: 20, color: Colors.blue),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: const Text(
              'You account is ready for use.',
              style: TextStyle(fontFamily: "Lato", fontSize: 15),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(left: 20, right: 20, top: 60),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                ),
                onPressed: () {
                  User user =  User(name: UserProvider().user, token: "");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SearchScreen(user: user)));
                },
                child: const Text(
                  "Go to Homepage",
                  style: TextStyle(fontFamily: "Lato", fontSize: 15),
                )),
          ),
        ],
      ),
    );
  }
}
