import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final String labeltext;
  final String prefixIconString;

  const CustomTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.labeltext,
      required this.prefixIconString});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  Icon? prefixIcon;

  // Check the value of prefixIconString and set the appropriate icon
  @override
  Widget build(BuildContext context) {
    Widget getPrefixIcon() {
      switch (widget.prefixIconString) {
        case 'email':
          return Icon(Icons.email_outlined, color: Colors.cyan[600]);
        case 'phone':
          return Icon(Icons.phone_android_rounded, color: Colors.cyan[600]);
        case 'password':
          return Icon(Icons.remove_red_eye, color: Colors.cyan[600]);
        default:
          // Handle other cases or provide a default icon
          return Icon(Icons.person_outline_outlined, color: Colors.cyan[600]);
      }
    }

    return TextFormField(
      controller: widget.controller,
      obscureText: widget.prefixIconString == 'password',
      decoration: InputDecoration(
        labelText: widget.labeltext,

        hintText: widget.hintText,
        fillColor: Colors.white,
        filled: true,

        prefixIcon: getPrefixIcon(),
        // Icons.alternate_email,
        // color: Color(0xff58C6EC),

        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Colors.black45),
          borderRadius: BorderRadius.circular(12.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: Colors.cyan.shade700),
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      validator: (val) {
        if (val == null || val.isEmpty) {
          return 'Enter your ${widget.hintText}';
        }
        return null; // Return null for valid input
      },
    );
  }
}

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight weight;
  final Color textColor;
  const CustomText(
      {super.key,
      required this.text,
      required this.fontSize,
      required this.weight,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
              fontFamily: 'Rubik Medium',
              fontSize: fontSize,
              fontWeight: weight,
              color: textColor),
        ),
      ],
    );
  }
}
