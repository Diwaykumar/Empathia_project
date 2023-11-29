// import 'package:flutter/material.dart';
// // import 'package:project/constants/global_variable.dart';
//
// enum Auth{
//   signin,
//   signup,
// }
//
// class AuthScreen extends StatefulWidget {
//   static const String routeName = '/auth-screen';
//   const AuthScreen({super.key});
//
//   @override
//   State<AuthScreen> createState() => _AuthScreenState();
// }
//
// class _AuthScreenState extends State<AuthScreen> {
//
//   final Auth _auth = Auth.signup;
//   final _signUpFormkey = GlobalKey<FormState>();
//   final _signInFormkey = GlobalKey<FormState>();
//
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   final TextEditingController _emController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       body: SafeArea(
//         child: Column(
//
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 GestureDetector(
//                   onTap: (){
//                     Navigator.pop(context);
//                   },
//                   child: Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Icon(Icons.arrow_back_sharp, color: Colors.blue[400],),
//
//                   ),
//                 ),
//               ],
//
//
//             ),
//             const SizedBox(
//               height: 15,
//             ),
//             const Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//
//                 // Text()
//               ],
//             ),
//             // SizedBox(
//             //   height: 15,
//             // ),
//             const Padding(
//               padding: EdgeInsets.only(top: 30),
//               child: Center(
//                   child: Text(
//                     'Welcome\n To',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                         fontSize: 24,
//                         fontFamily: 'Rubik Medium',
//                         color: Color(0xff198EB6)),
//                   )),
//             ),
//
//
//             const Image(
//               height: 50,
//               width: 200,
//               image: AssetImage('assets/logoo.png'),
//             ),
//
//             const SizedBox(
//               height: 80,
//             ),
//
//
//
//
//
//
//             ElevatedButton(
//               onPressed: () {Navigator.pushNamed(context, '/Registration');
//                 // Button action
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: const Color(0xff2596be),
//                 padding: const EdgeInsets.all(16),
//                 fixedSize: const Size(340, 55),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8), // Adjust border radius
//                 ),
//               ),
//               child: const Text('Sign-in',style: TextStyle(
//                   fontSize: 20,
//                   fontFamily: 'Rubik Regular',
//                   color: Colors.white),
//
//               ),
//             ),
//             const SizedBox(
//               height: 18,
//
//             ),
//             ElevatedButton(
//               onPressed: () {Navigator.pushNamed(context, '/Registration');
//                 // Button action
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: const Color(0xff2596be),
//                 padding: const EdgeInsets.all(16),
//                 fixedSize: const Size(340, 55),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8), // Adjust border radius
//                 ),
//               ),
//
//
//               child: const Text('Sign-Up',style: TextStyle(
//                   fontSize: 20,
//                   fontFamily: 'Rubik Regular',
//                   color: Colors.white),
//
//               ),
//             ),
//
//
//           ],
//
//           // children: [
//           //
//           //   SizedBox(
//           //     height: 20,
//           //   ),
//           //
//           //
//           //   Center(
//           //     child: Image.asset("assets/logoo.png",
//           //       height: 50,
//           //       width: 120,),
//           //
//           //   ),
//           //   SizedBox(height: 20,),
//           //   const Center(
//           //       child: Text(
//           //         'Welcome',
//           //         style: TextStyle(
//           //             fontSize: 30,
//           //             fontFamily: 'Rubik Medium',
//           //             fontWeight: FontWeight.w600,
//           //             color: Color(0xff198EB6)),
//           //       )),
//           //   Padding(
//           //     padding: const EdgeInsets.only(left: 20, bottom: 20),
//           //     child: ListTile(
//           //       title: const Text
//           //         ('Create Account',
//           //       style: TextStyle(
//           //         fontWeight: FontWeight.w400,
//           //         fontFamily: "Rubik Regular"
//           //       ),
//           //       ),
//           //       leading: Radio(
//           //         activeColor: GlobalVariables.secondaryColor,
//           //         value: Auth.signup,
//           //         groupValue: _auth,
//           //         onChanged: (Auth? val){
//           //           setState(() {
//           //             _auth = val!;
//           //           });
//           //         },
//           //       ),
//           //
//           //
//           //     ),
//           //   ),
//           //   Padding(
//           //     padding: const EdgeInsets.only(left: 20, bottom: 20),
//           //     child: ListTile(
//           //       title: const Text
//           //         ('Sign-in.',
//           //       style: TextStyle(
//           //         fontWeight: FontWeight.w400,
//           //         fontFamily: "Rubik Regular"
//           //       ),
//           //       ),
//           //       leading: Radio(
//           //         activeColor: GlobalVariables.secondaryColor,
//           //         value: Auth.signin,
//           //         groupValue: _auth,
//           //         onChanged: (Auth? val){
//           //           setState(() {
//           //             _auth = val!;
//           //           });
//           //         },
//           //       ),
//           //
//           //
//           //     ),
//           //   ),
//           // ],
//         ),
//       ),
//     );
//   }
// }
