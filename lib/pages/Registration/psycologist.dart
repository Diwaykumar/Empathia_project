import 'dart:convert';
import 'package:fyp_project/common/widgets/custom_textfield.dart';
import 'package:fyp_project/common/widgets/custom_button.dart';
import 'package:fyp_project/Services/auth_service.dart';
import 'package:http/http.dart' as http;
// import 'config.dart';
import 'package:flutter/material.dart';



class psycologist extends StatefulWidget {
  const psycologist({super.key});

  @override
  State<psycologist> createState() => _psycologistState();
}

class _psycologistState extends State<psycologist> {
  final _signUpFormKey = GlobalKey<FormState>();


  final AuthService authService = AuthService();

  final TextEditingController usernamecontroller = TextEditingController();
  final TextEditingController phonecontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  @override
  void dispose(){
    super.dispose();
    emailcontroller.dispose();
    passwordcontroller.dispose();
    usernamecontroller.dispose();
    phonecontroller.dispose();
  }

  void signUpUser(){
    authService.signUpUser(
        context: context,
        email: emailcontroller.text,
        password: passwordcontroller.text,
        name: usernamecontroller.text,
        phone: phonecontroller.text,
        userType: 'psycologist'
    );
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
                Container(
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
            SizedBox(
              height: 70,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 21),
              child: CustomText(text: 'Full Name', Fontsize: 18, Weight: FontWeight.normal, textcolor:  Color(0xff060607) ),
            ),



            const SizedBox(
              height: 2,
              width: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(controller: usernamecontroller, hintText: 'username', labeltext: 'Enter your Username', prefixIconString: 'Name',),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 21),
              child: CustomText(text: 'Password', Fontsize: 18, Weight: FontWeight.normal, textcolor:  Color(0xff060607) ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(controller: passwordcontroller, hintText: 'password', labeltext: 'Enter your Password', prefixIconString: 'password',),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 21),
              child: CustomText(text: 'Email', Fontsize: 18, Weight: FontWeight.normal, textcolor:  Color(0xff060607) ),
            ),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(controller: emailcontroller, hintText: 'email', labeltext: 'Enter your email', prefixIconString: 'email',),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 21),
              child: CustomText(text: 'Phone Number', Fontsize: 18, Weight: FontWeight.normal, textcolor:  Color(0xff060607) ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(controller: phonecontroller, hintText: 'Phone', labeltext: 'Enter your Number', prefixIconString: 'phone',),
            ),



            const SizedBox(
              height: 35,
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth >= 600 ? 100 :20 ),
              child: CustomButton(text: "Register", fontsize: 20,
                  onTap: (){
                    if(_signUpFormKey.currentState!.validate()){
                      signUpUser();
                    }
                  }
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text(
                  'Have an account? ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    // decoration: TextDecoration.underline,
                      fontSize: 16,
                      fontFamily: 'Rubik Regular',
                      color: Color(0xff060607)),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, '/login');
                  },

                  child: const Text(
                    'Sign in',
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
                SizedBox(
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
