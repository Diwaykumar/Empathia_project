import 'package:flutter/material.dart';

class CommonTools extends StatelessWidget {
  final String imagepath;
  final String text;
  final Color? textColor;

  CommonTools({
    Key? key,
    required this.imagepath,
    required this.text,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        height: 85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),

          color: Colors.black54, // Grey background
        ),
        child: Row(
          children: [
            // Logo image on the left
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                imagepath,
                width: 60, // Set the width of the logo
                height: 60, // Set the height of the logo
              ),
            ),
            // Text in the center
            Expanded(
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                    color: textColor ?? Colors.black, // Use the provided text color or default to black
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            // Icon on the right
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                // Icons.arrow_forward_ios_rounded,
                color: Colors.white, // Set the color of the icon
                // size: 24,
                onPressed: () {  }, icon: const Icon(Icons.arrow_forward_ios_outlined), // Set the size of the icon
              ),
            ),
          ],
        ),
      ),
    );
  }
}
