import 'package:flutter/material.dart';
import 'package:login_screens/tinder/src/widgets/tinder_button.dart';

class TinderPage extends StatelessWidget {
  const TinderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xFFed7263),
            Color(0xFFea4a77),
          ],
        )),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/flame-gradient-RGB_tn1100-category.png',
                        width: 45,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        'tinder',
                        style: TextStyle(
                            fontFamily: 'RobotoMono',
                            fontSize: 50,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                      children: [
                        TextSpan(
                            text:
                                'By tapping Create Account or Sign In, you agree to our '),
                        TextSpan(
                            text: '\nTerms',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            )),
                        TextSpan(
                            text: '. Learn how we process your data in your '),
                        TextSpan(
                            text: 'Privacy \npolicy',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            )),
                        TextSpan(text: ' and '),
                        TextSpan(
                            text: 'Cookies Policy',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            )),
                        // can add more TextSpans here...
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TinderButtom(
                    text: 'SIGN IN APPLE',
                    icon: Icons.apple,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TinderButtom(
                    text: 'SIGN IN WITH FACEBOOK',
                    icon: Icons.facebook,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TinderButtom(
                    text: 'SIGN IN WITH PHONE NUMBER',
                    icon: Icons.sms,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Trouble Signing In?',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
