import 'package:flutter/material.dart';
import 'package:fyp_project/common/widgets/custom_button.dart';
import 'package:fyp_project/pages/onboarding/sign_in_as.dart';

import 'create_acc_as.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
              colors: <Color>[
                Color(0xFF0097A7),
                Color(0xFFADD0E1),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                  text: 'Create Account',
                  onTap: () {
                    Navigator.of(context).push(
                      PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  const CreateAccAs(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            return FadeTransition(
                              opacity: animation,
                              child: child,
                            );
                          }),
                    );
                  }),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already a member?",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Rubik Regular',
                        color: Colors.white),
                  ),
                  const SizedBox(width: 4.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  const SignInAs(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            return FadeTransition(
                              opacity: animation,
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Rubik Regular',
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
