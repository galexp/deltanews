import 'package:deltanews/preference/user_preference.dart';
import 'package:deltanews/provider/auth_provider.dart';
import 'package:deltanews/provider/blog_provider.dart';
// import 'package:deltanews/provider/user_provider.dart';
import 'package:deltanews/screens/onboarding_screen.dart';
import 'package:deltanews/screens/search_screen.dart';
import 'package:deltanews/screens/signin_screen.dart';
import 'package:deltanews/screens/signup_screen.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model/user.dart';
import 'provider/user_provider.dart';

void main() {
  runApp(
   const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Future<User> getuserData() => UserPreference().getUser();
    // final userProvider = Provider.of<UserProvider>(context);
    return 
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => UserProvider()),
        ChangeNotifierProvider(create: (_) => BlogProvider())
      ],
      child:  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FutureBuilder(
      future: getuserData(),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            return const CircularProgressIndicator();
            
          default:
            // print(snapshot.data);
            if(snapshot.hasError){
              return Text('Error: ${snapshot.error}' );
            }else if(snapshot.data!.token == "null"){
               return EasySplashScreen(
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
     
            }else{
              // UserPreference().removeUser();
              User user = User(name: snapshot.data!.name, token: snapshot.data!.token);
              print(snapshot.data!.token);
              // userProvider.setUser(user);
              return  SearchScreen(user: user);
            }
            // return Text("");
        }
        }
    ),
    routes: {
      // '/home': (context) => const SearchScreen(),
      '/login' :(context) => const SignInScreen(),
      '/register' :(context) => const SignUpScreen()
    },
  ),
    );
    
  }
}
