import 'package:flutter/material.dart';

class CommonArticle extends StatelessWidget {
  final String imagePath;
  final String text;
  final Color? textColor;


  CommonArticle({
    super.key,
    required this.imagePath,
    required this.text,
    this.textColor,


  });


  @override
  Widget build(BuildContext context) {
    double containerHeight = MediaQuery.of(context).size.width * 0.2;
    double containerWidth = MediaQuery.of(context).size.width * 0.5;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: containerHeight,
        width: containerWidth,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20),

        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 6, top: 6, bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
