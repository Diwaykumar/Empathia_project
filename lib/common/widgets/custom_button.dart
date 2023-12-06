import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color? color;
  final double fontsize;
  const CustomButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.color,
    this.fontsize = 16.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ButtonStyle(
          minimumSize: MaterialStateProperty.all<Size>(
            const Size(300, 55),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          )),
      child: Text(
        text,
        style: TextStyle(fontSize: fontsize),
      ),
    );
  }
}

// // import 'dart:html';
// // // import 'dart:ui' as ui;
// //
// // import 'package:flutter/material.dart';
// //
// // class CustomButton extends StatelessWidget {
// //
// //   final String text;
// //   final VoidCallback onTap;
// //   const CustomButton({Key? key,
// //     required this.text,
// //     required this.onTap,}) : super(key: key);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //
// //     return Builder(
// //       builder: (context) {
//         return ElevatedButton(
//             onPressed: (){
//               onTap;
//             }, child: Text(text,),
//
//           style: ButtonStyle(
//             minimumSize: MaterialStateProperty.all<Size>(
//               Size(300, 55)
//             ),
//             shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(12),
//
//
//             ))
//           ),
//         );
//       }
//     );
//   }
// }
