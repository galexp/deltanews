import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:deltanews/provider/auth_provider.dart';
import 'package:deltanews/provider/user_provider.dart';
import 'package:deltanews/screens/signin_screen.dart';
import 'package:deltanews/screens/success_screen.dart';
import 'package:deltanews/util/http_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:provider/provider.dart';
import 'package:unicons/unicons.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isObscure = true;

  bool? _value = false;

  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
     final userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 100,
                  child:
                      const Image(image: AssetImage('assets/images/logo.png')),
                ),
                Container(
                  alignment: Alignment.center,
                  child: const Text(
                    'Delta News',
                    style: TextStyle(fontFamily: 'Lato', fontSize: 20),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 20, bottom: 30),
                  child: const Text(
                    'Create an Account',
                    style: TextStyle(fontFamily: 'Lato', fontSize: 30),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: RichText(
                      textAlign: TextAlign.left,
                      text: const TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: 'Name ',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Lato',
                                fontSize: 15)),
                        TextSpan(
                            text: '*',
                            style: TextStyle(
                                color: Colors.red,
                                fontFamily: 'Lato',
                                fontSize: 15))
                      ])),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    controller: name,
                    decoration: const InputDecoration(
                        hintText: "Name",
                        filled: true,
                        fillColor: Color.fromARGB(255, 246, 245, 245),
                        enabledBorder: InputBorder.none),
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty
                         ) {
                        return 'Please enter a name';
                      }
                      return null;
                    },
                  ),
                ),
                
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: RichText(
                      textAlign: TextAlign.left,
                      text: const TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: 'Email Address ',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Lato',
                                fontSize: 15)),
                        TextSpan(
                            text: '*',
                            style: TextStyle(
                                color: Colors.red,
                                fontFamily: 'Lato',
                                fontSize: 15))
                      ])),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    controller: email,
                    decoration: const InputDecoration(
                        hintText: "Email",
                        filled: true,
                        fillColor: Color.fromARGB(255, 246, 245, 245),
                        enabledBorder: InputBorder.none),
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value)) {
                        return 'Please enter a valid email';
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: RichText(
                      textAlign: TextAlign.left,
                      text: const TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: 'Password ',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Lato',
                                fontSize: 15)),
                        TextSpan(
                            text: '*',
                            style: TextStyle(
                                color: Colors.red,
                                fontFamily: 'Lato',
                                fontSize: 15))
                      ])),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    controller: password,
                    obscureText: isObscure,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              if (isObscure) {
                                setState(() {
                                  isObscure = false;
                                });
                              } else {
                                setState(() {
                                  isObscure = true;
                                });
                              }
                            },
                            icon: isObscure
                                ? const Icon(
                                    FeatherIcons.eye,
                                    color: Colors.grey,
                                  )
                                : const Icon(
                                    FeatherIcons.eyeOff,
                                    color: Colors.grey,
                                  )),
                        hintText: "Password",
                        filled: true,
                        fillColor: const Color.fromARGB(255, 246, 245, 245),
                        enabledBorder: InputBorder.none),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Password is required";
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: RichText(
                      textAlign: TextAlign.left,
                      text: const TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: 'Confirm Password ',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Lato',
                                fontSize: 15)),
                        TextSpan(
                            text: '*',
                            style: TextStyle(
                                color: Colors.red,
                                fontFamily: 'Lato',
                                fontSize: 15))
                      ])),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    controller: confirmPassword,
                    obscureText: isObscure,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              if (isObscure) {
                                setState(() {
                                  isObscure = false;
                                });
                              } else {
                                setState(() {
                                  isObscure = true;
                                });
                              }
                            },
                            icon: isObscure
                                ? const Icon(
                                    FeatherIcons.eye,
                                    color: Colors.grey,
                                  )
                                : const Icon(
                                    FeatherIcons.eyeOff,
                                    color: Colors.grey,
                                  )),
                        hintText: "Confirm Password",
                        filled: true,
                        fillColor: const Color.fromARGB(255, 246, 245, 245),
                        enabledBorder: InputBorder.none),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Password is required";
                      } else if (value != password.text) {
                        return "Password does not match";
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Row(
                      children: [
                        Checkbox(
                          value: _value,
                          onChanged: (value) {
                            setState(() {
                              _value = value;
                            });
                          },
                        ),
                        const Text(
                          "Remember me",
                          style: TextStyle(fontFamily: "Lato"),
                        )
                      ],
                    )),
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: authProvider.registeredInStatus == Status.Registering
                  ? const CircularProgressIndicator()
                  :
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 50),
                      ),
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {

                          
                        authProvider.register(name.text, email.text, password.text).then((response) {
                          
                          if(response['status'] == 500){
                            HttpService().showMessage(response['message'], context);
                          }else{
                            print(response['data']);
                            String name = response['data'].name;
                            userProvider.setUser(name);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SuccessScreen()));
                          }

                         
                          
                        });
                        
                          
                        }
                      },
                      child: const Text(
                        "Create Account",
                        style: TextStyle(fontFamily: "Lato", fontSize: 15),
                      )),
                ),
                Container(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: const Text(
                      "or continue with",
                      style: TextStyle(fontFamily: "Lato"),
                    )),
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        clipBehavior: Clip.none,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                minimumSize: const Size(double.infinity, 40),
                                elevation: 0,
                                backgroundColor: Colors.white,
                                shape: const RoundedRectangleBorder(
                                  side:
                                      BorderSide(color: Colors.blue, width: 1),
                                )),
                            onPressed: () {},
                            child: Row(
                              children: const [
                                Icon(
                                  BootstrapIcons.facebook,
                                  color: Colors.blue,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8),
                                  child: Text(
                                    " Facebook",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "Lato"),
                                  ),
                                )
                              ],
                            )),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        clipBehavior: Clip.none,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                minimumSize: const Size(double.infinity, 40),
                                elevation: 0,
                                backgroundColor: Colors.white,
                                shape: const RoundedRectangleBorder(
                                  side:
                                      BorderSide(color: Colors.blue, width: 1),
                                )),
                            onPressed: () {},
                            child: Row(
                              children: const [
                                Icon(
                                  UniconsLine.google,
                                  color: Colors.blue,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8),
                                  child: Text(
                                    " Google",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "Lato"),
                                  ),
                                )
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
                Container(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Already have an account?',
                          style: TextStyle(fontFamily: "Lato"),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SignInScreen()));
                            },
                            child: const Text(
                              'Sign In',
                              style: TextStyle(fontFamily: "Lato"),
                            ))
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
