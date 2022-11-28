import 'package:deltanews/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:onboarding_animation/onboarding_animation.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.9),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: OnBoardingAnimation(
          pages: [
            Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    alignment: Alignment.topRight,
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUpScreen()));
                        },
                        child: const Text(
                          "Skip",
                          style: TextStyle(fontFamily: "Lato", fontSize: 20),
                        )),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 50),
                    height: 300,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/onboard1.png'),
                            fit: BoxFit.fill)),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    alignment: Alignment.center,
                    child: RichText(
                        maxLines: 2,
                        overflow: TextOverflow.clip,
                        textAlign: TextAlign.center,
                        text: const TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: 'Get the latest news from ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Lato',
                                  fontSize: 30)),
                          TextSpan(
                              text: 'Reliable Sources',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontFamily: 'Lato',
                                  fontSize: 30))
                        ])),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: const Text(
                      'Carry all the latest gists with you at all times',
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Lato',
                          fontStyle: FontStyle.italic),
                    ),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    alignment: Alignment.topRight,
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUpScreen()));
                        },
                        child: const Text(
                          "Skip",
                          style: TextStyle(fontFamily: "Lato", fontSize: 20),
                        )),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 50),
                    height: 300,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/onboard2.png'),
                            fit: BoxFit.fill)),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    alignment: Alignment.center,
                    child: RichText(
                        maxLines: 2,
                        overflow: TextOverflow.clip,
                        textAlign: TextAlign.center,
                        text: const TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: 'Watch all major events ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Lato',
                                  fontSize: 30)),
                          TextSpan(
                              text: 'As It Happens',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontFamily: 'Lato',
                                  fontSize: 30))
                        ])),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: const Text(
                      'See it happen live from the your device at all times',
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Lato',
                          fontStyle: FontStyle.italic),
                    ),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    alignment: Alignment.topRight,
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "",
                          style: TextStyle(fontFamily: "Lato", fontSize: 20),
                        )),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 50),
                    height: 300,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/onboard3.png'),
                            fit: BoxFit.fill)),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    alignment: Alignment.center,
                    child: RichText(
                        maxLines: 2,
                        overflow: TextOverflow.clip,
                        textAlign: TextAlign.center,
                        text: const TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: 'Share your taughts on trends ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Lato',
                                  fontSize: 30)),
                          TextSpan(
                              text: 'As E Dey Hot',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontFamily: 'Lato',
                                  fontSize: 30))
                        ])),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: const Text(
                      'Your voice and opinions can be heard at all times',
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Lato',
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 50),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(double.infinity, 55),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUpScreen()));
                        },
                        child: const Text(
                          "Get Started",
                          style: TextStyle(fontFamily: "Lato", fontSize: 15),
                        )),
                  ),
                ],
              ),
            )
          ],
          indicatorDotHeight: 7.0,
          indicatorDotWidth: 7.0,
          indicatorType: IndicatorType.expandingDots,
          indicatorPosition: IndicatorPosition.bottomCenter,
          indicatorActiveDotColor: const Color.fromARGB(255, 17, 138, 229),
        ),
      ),
    );
  }
}
