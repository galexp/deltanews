import 'package:deltanews/provider/auth_provider.dart';
import 'package:deltanews/provider/user_provider.dart';
import 'package:deltanews/screens/onboarding_screen.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => UserProvider())
      ],
      child: const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    
    EasySplashScreen(
      logoWidth: 60,
      loaderColor: const Color.fromARGB(255, 17, 138, 229),
      logo: const Image(
        image: AssetImage('assets/images/logo.png'),
      ),
      title: const Text(
        "Delta News",
        style: TextStyle(
            fontFamily: 'Lato', fontWeight: FontWeight.bold, fontSize: 30),
      ),
      backgroundColor: Colors.white,
      showLoader: true,
      navigator: const OnBoardingScreen(),
      durationInSeconds: 5,
    );
  }
}
