import 'package:flutter/material.dart';
import 'package:fyp_project/common/widgets/customButton.dart';
import 'package:fyp_project/common/widgets/customTextField.dart';
import 'package:fyp_project/pages/psychologist/SignUpPsych/signInAsPsych.dart';
import 'package:fyp_project/services/auth_service.dart';

class CreateAccountPsych extends StatelessWidget {
  const CreateAccountPsych({super.key});

  @override
  Widget build(BuildContext context) {
    return const Registration();
  }
}

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final _signUpFormKey = GlobalKey<FormState>();

  final AuthService authService = AuthService();

  final TextEditingController usernamecontroller = TextEditingController();
  final TextEditingController phonecontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailcontroller.dispose();
    passwordcontroller.dispose();
    usernamecontroller.dispose();
    phonecontroller.dispose();
  }

  void signUpUser() {
    authService.signUpUser(
        context: context,
        email: emailcontroller.text,
        password: passwordcontroller.text,
        name: usernamecontroller.text,
        phone: phonecontroller.text,
        userType: 'psycologist');
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFD9EDBF),
      body: Form(
        // autovalidateMode: AutovalidateMode.always,
        key: _signUpFormKey,
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Color(0xFF4D5D54),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/signUp.png',
                  height: 200,
                  width: 500,
                ),
                const Text(
                  'Get Started',
                  style: TextStyle(
                      fontSize: 28,
                      fontFamily: 'Rubik Regular',
                      color: Color(0xFF4D5D54)),
                ),
                const Text(
                  'By creating a free account',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Rubik Regular',
                      color: Colors.black),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 21),
              child: CustomText(
                  text: 'User Name',
                  fontSize: 18,
                  weight: FontWeight.normal,
                  textColor: Colors.black),
            ),
            const SizedBox(
              height: 2,
              width: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(
                controller: usernamecontroller,
                hintText: 'username',
                labeltext: 'Enter your username',
                prefixIconString: 'Name',
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 21),
              child: CustomText(
                  text: 'Email',
                  fontSize: 18,
                  weight: FontWeight.normal,
                  textColor: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(
                controller: emailcontroller,
                hintText: 'email',
                labeltext: 'Enter your email',
                prefixIconString: 'email',
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 21),
              child: CustomText(
                  text: 'Password',
                  fontSize: 18,
                  weight: FontWeight.normal,
                  textColor: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(
                controller: passwordcontroller,
                hintText: 'password',
                labeltext: 'Enter your password',
                prefixIconString: 'password',
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 21),
              child: CustomText(
                  text: 'Phone Number',
                  fontSize: 18,
                  weight: FontWeight.normal,
                  textColor: Colors.black),

            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(
                controller: phonecontroller,
                hintText: 'Phone',
                labeltext: 'Enter your number',
                prefixIconString: 'phone',
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth >= 600 ? 100 : 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const SignInAsPsych(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        var begin = 0.0;
                        var end = 1.0;
                        var curve = Curves.ease;
                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));

                        return FadeTransition(
                          opacity: animation.drive(tween),
                          child: child,
                        );
                      },
                      transitionDuration: const Duration(microseconds: 500),
                    ),
                  );
                },
                child: CustomButton(
                  text: "Register",
                  onTap: () {
                    if (_signUpFormKey.currentState!.validate()) {
                      signUpUser();
                    }
                  },
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already a member? ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      // decoration: TextDecoration.underline,
                      fontSize: 18,
                      fontFamily: 'Rubik Regular',
                      color: Colors.black),
                ),
                const SizedBox(width: 4.0),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/signInAsPsych');
                  },
                  child: const Text(
                    'Sign In',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Rubik Regular',
                        color: Color(0xFF4D5D54)),
                  ),
                ),
                const SizedBox(
                  height: 40,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
