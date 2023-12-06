import 'package:flutter/material.dart';

class commonModule extends StatelessWidget {
  final String imagePath;
  final String text;
  const commonModule({super.key, required this.imagePath, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(8),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              Text(text),
              // Text(text)
            ],
          )
        ],
      ),
    );
  }
}
