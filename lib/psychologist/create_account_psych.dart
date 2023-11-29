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
        userType: 'psycologist');
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.blue[50],
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
                      Icons.arrow_back_sharp,
                      color: Colors.blue[400],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                  width: 140,
                  child: Image.asset('logo.png'),
                )
              ],
            ),
            const Center(
                child: Text(
                  'Create New Account',
                  style: TextStyle(
                      fontSize: 26,
                      fontFamily: 'Rubik Medium',
                      color: Color(0xff198EB6)),
                )),
            const SizedBox(
              height: 70,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 21),
              child: CustomText(
                  text: 'Full Name',
                  Fontsize: 18,
                  Weight: FontWeight.normal,
                  textcolor: Color(0xff060607)),
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
                labeltext: 'Enter your Username',
                prefixIconString: 'Name',
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 21),
              child: CustomText(
                  text: 'Email',
                  Fontsize: 18,
                  Weight: FontWeight.normal,
                  textcolor: Color(0xff060607)),
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
                  textcolor: Color(0xff060607)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(
                controller: passwordcontroller,
                hintText: 'password',
                labeltext: 'Enter your Password',
                prefixIconString: 'password',
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 21),
              child: CustomText(
                  text: 'Phone Number',
                  Fontsize: 18,
                  Weight: FontWeight.normal,
                  textcolor: Color(0xff060607)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(
                controller: phonecontroller,
                hintText: 'Phone',
                labeltext: 'Enter your Number',
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
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already a member? ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    // decoration: TextDecoration.underline,
                      fontSize: 16,
                      fontFamily: 'Rubik Regular',
                      color: Color(0xff060607)),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/signInAs');
                  },
                  child: const Text(
                    'Sign In',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor:
                        Colors.blue, // Customize the underline color
                        decorationThickness: 2.0,
                        fontSize: 17,
                        fontFamily: 'Rubik Medium',
                        color: Color(0xff3EB9E3)),
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
