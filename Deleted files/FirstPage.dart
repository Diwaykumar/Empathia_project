// import 'package:flutter/material.dart';
// import 'package:fyp_project/pages/SecondPage.dart';
// import 'package:fyp_project/common/widgets/custom_button.dart';
//
//
//
// class Firstpage extends StatelessWidget {
//   const Firstpage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: Colors.blue[50],
//
//       body: SafeArea(
//         child: Column(
//           children: [
//
//             const Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Padding(
//                   padding: EdgeInsets.only(top: 80),
//                   child: Text(
//                     'Get Instant Consult \n From Your Preferred \n Psychiatrist',
//                     style: TextStyle(
//                       fontSize: 30,
//                       fontFamily: 'Rubik Medium',
//                       fontWeight: FontWeight.w800,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//               ],
//             ),
//             const Padding(
//               padding: EdgeInsets.only(top: 25),
//               child: Center(
//                 child: Text(
//                   'Now you can speak to your preferred doctor\n within 1 minute through chat/voice call/ video\n call',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontFamily: 'Rubik Regular',
//                     color: Color(0xff868686),
//                   ),
//                 ),
//               ),
//             ),
//           Padding(
//             padding: const EdgeInsets.only(top: 15),
//             child: Image.asset('assets/doc.png',
//             height: 300,
//             width: 300,),
//           ),
//             // Container(
//             //   height: 50,
//             //   width: 250,
//             //   decoration: BoxDecoration(
//             //     borderRadius: BorderRadius.circular(10),
//             //     color: Color(0xff1384AB),
//             //   ),
//             //   child: Center(
//             //     child: ElevatedButton(
//             //         child: Text(
//             //           'Get Started',
//             //           style: TextStyle(
//             //             fontFamily: 'Rubik Medium',
//             //             color: Color(0xffFFFFFF),
//             //             fontSize: 16,
//             //             fontWeight: FontWeight.w600,
//             //           ),
//             //         ),
//             //       onPressed: () {
//             //         Navigator.pushNamed(context, '/SecondPage');
//             //       }
//             //     ),
//             //   ),
//             // ),
//
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: screenWidth >= 600 ? 100 :20),
//               child: CustomButton(text: 'Get Started',
//                   onTap: (){
//                     Navigator.pushNamed(context, '/SecondPage');
//
//                   }),
//             ),
//
//
//             GestureDetector(
//               onTap: (){
//                 Navigator.pushNamed(context, '/login');
//               },
//               child: const Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.all(12.0),
//                     child: Text(
//                       'Skip',
//                       textAlign: TextAlign.center,
//
//                       style: TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.bold,
//                         fontFamily: 'Rubik Regular',
//                         color: Color(0xff677294),
//                         decoration: TextDecoration.underline
//
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//
//
//
//           ],
//         ),
//       ));
//   }
// }
