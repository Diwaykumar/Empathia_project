// import 'package:flutter/material.dart';
// import 'package:fyp_project/common/widgets/custom_button.dart';
//
//
// class ThirdPage extends StatelessWidget {
//   const ThirdPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     return Scaffold(
//         // appBar: AppBar(
//         //   title: const Text('Thirdpage'),
//         // ),
//         backgroundColor: Colors.blue[50],
//             body: SafeArea(
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       GestureDetector(
//                         onTap: (){
//                           Navigator.pop(context);
//                         },
//                         child: Padding(
//                           padding: const EdgeInsets.all(20.0),
//                           child: Icon(Icons.arrow_back_sharp, color: Colors.blue[400],),
//
//                         ),
//                       ),
//                     ],
//
//
//                   ),
//
//                   const Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Padding(
//                         padding: EdgeInsets.only(top: 80),
//                         child: Text(
//                           'Easy Appointment \nScheduling and fast \nPayment',
//                           style: TextStyle(
//                             fontSize: 30,
//                             fontFamily: 'Rubik Medium',
//                             fontWeight: FontWeight.w800,
//                           ),
//                           textAlign: TextAlign.center,
//                         ),
//                       ),
//                     ],
//                   ),
//
//                   Padding(
//                     padding: const EdgeInsets.only(top: 15),
//                     child: Image.asset('assets/doc3.png',
//                       height: 300,
//                       width: 300,),
//                   ),
//                   // Container(
//                   //   height: 50,
//                   //   width: 250,
//                   //   decoration: BoxDecoration(
//                   //     borderRadius: BorderRadius.circular(10),
//                   //     color: Color(0xff1384AB),
//                   //   ),
//                   //
//                   //
//                   //     // child: Center(
//                   //     //   child: ElevatedButton(
//                   //     //       child: const Text(
//                   //     //         'Get Started',
//                   //     //         style: TextStyle(
//                   //     //           fontFamily: 'Rubik Medium',
//                   //     //           color: Color(0xffFFFFFF),
//                   //     //           fontSize: 16,
//                   //     //           fontWeight: FontWeight.w600,
//                   //     //         ),
//                   //     //       ),
//                   //     //       onPressed: () {
//                   //     //         Navigator.pushNamed(context, '/FourthPage');
//                   //     //       }
//                   //     //   ),
//                   //     // ),
//                   //
//                   //
//                   //   ),
//
//                   Padding(
//                     padding: EdgeInsets.symmetric(horizontal: screenWidth >= 600 ? 100 :20),
//                     child: CustomButton(text: 'Get Started',
//                         onTap: (){
//                           Navigator.pushNamed(context, '/FourthPage');
//
//                         }),
//                   ),
//
//                   GestureDetector(
//                     onTap: (){
//                       Navigator.pushNamed(context, '/login');
//                     },
//                     child: const Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Padding(
//                           padding: EdgeInsets.all(12.0),
//                           child: Text(
//                             'Skip',
//                             textAlign: TextAlign.center,
//
//                             style: TextStyle(
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.bold,
//                                 fontFamily: 'Rubik Regular',
//                                 color: Color(0xff677294),
//                                 decoration: TextDecoration.underline
//
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//
//
//
//
//
//                 ],
//
//               ),
//     )
//     );
//   }
// }