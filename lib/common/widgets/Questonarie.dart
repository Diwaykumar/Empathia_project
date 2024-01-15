import 'package:flutter/material.dart';


class QuestionnaireContainer extends StatefulWidget {
  @override
  State<QuestionnaireContainer> createState() => _QuestionnaireContainerState();
}

class _QuestionnaireContainerState extends State<QuestionnaireContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "IT'S TIME FOR CHECK-IN dndjnkkjfdskbfkdkgdkbfkedkbfkebkgbk",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.black),
          ),
          SizedBox(height: 2),
          Text(
            'How was your week?',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
          ),
          // SizedBox(height: ),
          // Add options for the user to answer the question (e.g., radio buttons, sliders, etc.)
          // You can customize this part based on your desired questionnaire format.
        ],
      ),
    );
  }
}