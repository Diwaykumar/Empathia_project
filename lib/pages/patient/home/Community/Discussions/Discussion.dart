import 'package:flutter/material.dart';

import '../../../../../common/widgets/commonDiscussion.dart';

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
      backgroundColor: const Color(0xFF5f7470),
      body: ListView(
        children: const [
          CommonDiscussion(
            imagePath: 'assets/idea.png',
            text: 'HEHE',
            text2: 'HEHE',
            textColor: Colors.black54,
          )
        ],
      ),
    );
  }
}
