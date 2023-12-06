// import 'package:flutter/material.dart';
// import 'package:fyp_project/common/widgets/custom_button.dart';
// import 'package:fyp_project/common/widgets/custom_textfield.dart';
//
//
//
// class FormFields extends StatefulWidget {
//   const FormFields({super.key});
//
//   @override
//   State<FormFields> createState() => _FormFieldsState();
// }
//
// class _FormFieldsState extends State<FormFields> {
//   final _formKey = GlobalKey<FormState>();
//   String errorMessage1 = "";
//   String errorMessage2 = "";
//
//   final TextEditingController emailcontroller = TextEditingController();
//   final TextEditingController passwordcontroller = TextEditingController();
//
//
//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//
//         backgroundColor: Colors.blue[50],
//         body: Form(
//             key: _formKey,
//             child: ListView(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     GestureDetector(
//                       onTap: (){
//                         Navigator.of(context).pop();
//                       },
//                       child: Padding(
//                         padding: const EdgeInsets.only(top: 20, left: 20),
//                         child: Icon(Icons.arrow_back_sharp, color: Colors.blue[400],),
//
//                       ),
//                     ),
//                   ],
//
//
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 Center(
//                   child: Image.asset(
//                     'assets/logo.png',
//                     height: 80,
//                     width: 130,
//                   ),
//                 ),
//                 Center(
//                   child: Text("Welcome", style: TextStyle(fontSize: 35, fontWeight: FontWeight.w400, color: Color(0xff198EB6), fontFamily: 'Rubik Medium'),),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding:
//                       EdgeInsets.symmetric(horizontal: 21, vertical: 10),
//                       child: Text(
//                         'Sign In',
//                         style: TextStyle(
//                             fontSize: 22,
//                             fontFamily: 'Rubik Medium',
//                             color: Colors.black),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding:
//                       EdgeInsets.only(top: 20,left: 21),
//                       child: Text(
//                         'Sign in using your e-mail and,\ncreate a strong password.',
//                         // textAlign: TextAlign.center,
//                         style: TextStyle(
//                             fontSize: 20,
//                             fontFamily: 'Rubik Regular',
//                             color: Colors.black),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding:
//                       EdgeInsets.only(top: 20, left: 21,bottom: 12),
//                       child: Text(
//                         'Email',
//                         style: TextStyle(
//                             fontSize: 18,
//                             fontFamily: 'Rubik Medium',
//                             color: Color(0xff060607)),
//                       ),
//                     )
//                   ],
//                 ),
//
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20),
//                   child: CustomTextField(
//                     controller: emailcontroller,
//                     hintText: 'Email',
//                     labeltext: 'Enter Your Email', prefixIconString: 'email',
//
//
//                   ),
//
//                 ),
//
//
//
//                 const Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding:
//                       EdgeInsets.only(top: 40, left: 21,bottom:12 ),
//                       child: Text(
//                         'Password',
//                         style: TextStyle(
//                             fontSize: 18,
//                             fontFamily: 'Rubik Medium',
//                             color: Color(0xff060607)),
//                       ),
//                     )
//                   ],
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20),
//                   child: CustomTextField(
//                     controller: passwordcontroller,
//                     hintText: 'Password',
//                     labeltext: 'Enter Your Password', prefixIconString: 'password',
//
//
//
//                   ),
//
//                 ),
//
//
//
//
//
//                 const Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Padding(
//                       padding:
//                       EdgeInsets.symmetric(horizontal: 21, vertical: 10),
//                       child: Text(
//                         'Forgot Password',
//                         style: TextStyle(
//                             decoration: TextDecoration.underline,
//                             fontSize: 18,
//                             fontFamily: 'Rubik Regular',
//                             color: Color(0xff060607)),
//                       ),
//                     )
//                   ],
//                 ),
//
//                 const SizedBox(
//                   height: 35,
//                 ),
//
//                 Padding(
//                   padding:  EdgeInsets.symmetric(horizontal: screenWidth >= 600 ? 100 :20),
//                   child: CustomButton(text: 'Sign Up', fontsize: 20,
//                       onTap: (){}),
//                 ),
//
//                 // Row(
//                 //   mainAxisAlignment: MainAxisAlignment.center,
//                 //   children: [
//                 //     TextButton(onPressed:(){
//                 //       if (_formKey.currentState!.validate()) {
//                 //       }
//                 //
//                 //     }, child:
//                 //     Container(
//                 //       height: 50,
//                 //       width: 300,
//                 //       decoration: BoxDecoration(
//                 //           color: Color(0xff3EB9E3),
//                 //           borderRadius: BorderRadius.circular(10)),
//                 //       child: const Center(
//                 //         child: Text(
//                 //           'Sign In',
//                 //           style: TextStyle(
//                 //               fontSize: 20,
//                 //               fontFamily: 'Rubik Regular',
//                 //               color: Colors.white),
//                 //         ),
//                 //       ),
//                 //     ),)
//                 //   ],
//                 // ),
//
//                 const SizedBox(
//                   height: 35,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const SizedBox(
//                       height: 35,
//                     ),
//                     const Text(
//                       'Dont Have an account?',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                           fontSize: 16,
//                           fontFamily: 'Rubik Regular',
//                           color: Color(0xff060607)),
//                     ),
//
//                     GestureDetector(
//
//                       onTap: (){
//
//                         Navigator.of(context, rootNavigator: true).pushNamed("/signup");
//                         // Navigator.pushNamed(context,'/signup');
//
//                       },
//                       child: const Text(
//                         'Sign Up',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                             decoration: TextDecoration.underline,
//                             fontSize: 17,
//                             fontFamily: 'Rubik Medium',
//                             color: Color(0xff3EB9E3)),
//
//
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//
//             )),
//       ),
//
//     );
//   }
// }
//
//
//
