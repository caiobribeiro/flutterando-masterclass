import 'package:flutter/material.dart';
import 'package:login_screens/money/src/widgets/money_button.dart';
import 'package:login_screens/money/src/widgets/logo.dart';

class MoneyPage extends StatelessWidget {
  const MoneyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.black,
        child: Column(
          children: [
            const Expanded(
              child: Logo(),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const MoneyButton(
                    textContent: 'Sign Up with Email ID',
                    textColor: Colors.white,
                    buttonColor: Color(0xFF5E5CE5),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  MoneyButton(
                    textContent: 'Sign Up with Google',
                    textColor: Colors.black,
                    buttonColor: Colors.white,
                    imageContent: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/2991/2991148.png',
                      width: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  const Text.rich(
                    TextSpan(
                      text: 'Already have an account? ',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Sign in',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            )),
                        // can add more TextSpans here...
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
