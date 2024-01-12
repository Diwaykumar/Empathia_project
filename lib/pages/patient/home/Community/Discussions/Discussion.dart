import 'package:flutter/material.dart';

import '../../../../../common/widgets/common_discussion.dart';


class Discussion extends StatefulWidget {
  const Discussion({super.key});

  @override
  State<Discussion> createState() => _DiscussionState();
}

class _DiscussionState extends State<Discussion> {
  @override
  Widget build(BuildContext context) {
    // Removed screenWidth as it is not used in this snippet.
    return Scaffold(
      body: ListView(
        children: [
          CommonDiscussion(imagePath: 'assets/Article 19.jpeg', text: 'jdbjbZJD', text2: 'ejbhdshfjbjhfjedbjjvbjDAjjbdjf', textColor: Colors.black54,

          )
        ],

      ),
    );
  }
}