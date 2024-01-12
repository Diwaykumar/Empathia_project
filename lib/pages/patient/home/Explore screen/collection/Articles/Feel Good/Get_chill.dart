import 'package:flutter/material.dart';
import 'package:fyp_project/common/widgets/Common_Artcile_page.dart';
import 'package:fyp_project/common/widgets/common_article.dart';
import 'package:fyp_project/common/widgets/custom_textfield.dart';

class Getchill extends StatefulWidget {
  const Getchill({super.key});

  @override
  State<Getchill> createState() => _GetchillState();
}

class _GetchillState extends State<Getchill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ArticlePage(
        imagePath: 'assets/article 2.jpeg',
        title: 'Financial Stress',
        additionalContent: [
       dividerr(),



          common_text(
            text:
                "Financial stress has a way of making even the good parts of life feel precarious and difficult. And while we'd love to wave a magic wand and help us all be financially independent, that's not our area of expertise."
                " Instead, we want to help you manage the feelings and thoughts that financial stress causes, so you can feel less anxious and scared when making a plan.",
            fontSize: 17, weight: FontWeight.w500,

          ),

       dividerr(),
          common_text(text: 'Give yourself a break', fontSize: 22, weight: FontWeight.bold, textColor: Colors.blueGrey,),
          SizedBox(height: 14,),
          common_text(text: 'There are many systemic factors that can lead to financial stress, but much of the time, we find a way to only blame ourselves for our '
              'difficulties. Even when our own actions have contributed to the stress, beating ourselves up is not the way forward. Give yourself a break for the'
              ' next 5-minutes and show yourself a little self-compassion. That self-kindness is what helps us move forward.', fontSize: 15, weight: FontWeight.normal)

        ],
      ),
    );
  }
}
