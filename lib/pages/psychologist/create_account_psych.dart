import 'package:flutter/material.dart';
import 'package:fyp_project/common/widgets/custom_button.dart';
import 'package:fyp_project/common/widgets/custom_textfield.dart';
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
        userType: 'psychologist');
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black12,
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
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Colors.cyan.shade600,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/signUp.png',
                  height: 200,
                  width: 500,
                ),
                Text(
                  'Get Started',
                  style: TextStyle(
                      fontSize: 28,
                      fontFamily: 'Rubik Regular',
                      color: Colors.cyan[600]),
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
                  text: 'Full Name',
                  Fontsize: 18,
                  Weight: FontWeight.normal,
                  textcolor: Colors.black),
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
                  Fontsize: 18,
                  Weight: FontWeight.normal,
                  textcolor: Colors.black),
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
                  Fontsize: 18,
                  Weight: FontWeight.normal,
                  textcolor: Colors.black),
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
                  Fontsize: 18,
                  Weight: FontWeight.normal,
                  textcolor: Colors.black),
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
              child: CustomButton(
                  text: "Register",
                  fontsize: 20,
                  onTap: () {
                    if (_signUpFormKey.currentState!.validate()) {
                      signUpUser();
                    }
                  }),
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
                  child: Text(
                    'Sign In',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Rubik Regular',
                        color: Colors.cyan[600]),
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
