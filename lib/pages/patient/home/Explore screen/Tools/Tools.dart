import 'package:flutter/material.dart';
import 'package:fyp_project/common/widgets/common_tools.dart';
// Assuming that CustomText is a defined widget that you want to use.
import '../../../../../common/widgets/custom_textfield.dart';

class ToolsPage extends StatefulWidget {
  const ToolsPage({super.key});

  @override
  State<ToolsPage> createState() => _ToolsPageState();
}

class _ToolsPageState extends State<ToolsPage> {
  @override
  Widget build(BuildContext context) {
    // Removed screenWidth as it is not used in this snippet.
    return Scaffold(
      body: ListView(
        children: [
          CommonTools(
            imagePath: 'assets/Tool1.png', // Make sure the asset exists in your project and is listed in pubspec.yaml
            text: 'Meditate',
            textColor: Colors.white, // If textColor is optional, it can be omitted or set to a default inside CommonTools
          ),
          CommonTools(
            imagePath: 'assets/Tool1.png', // Make sure the asset exists in your project and is listed in pubspec.yaml
            text: 'Guided Journey',
            textColor: Colors.white, // If textColor is optional, it can be omitted or set to a default inside CommonTools
          ),
          CommonTools(
            imagePath: 'assets/Tool1.png', // Make sure the asset exists in your project and is listed in pubspec.yaml
            text: 'Thoughts',
            textColor: Colors.white, // If textColor is optional, it can be omitted or set to a default inside CommonTools
          ),
          CommonTools(
            imagePath: 'assets/Tool1.png', // Make sure the asset exists in your project and is listed in pubspec.yaml
            text: 'Hope',
            textColor: Colors.white, // If textColor is optional, it can be omitted or set to a default inside CommonTools
          ),
          CommonTools(
            imagePath: 'assets/Tool1.png', // Make sure the asset exists in your project and is listed in pubspec.yaml
            text: 'Health',
            textColor: Colors.white, // If textColor is optional, it can be omitted or set to a default inside CommonTools
          ),

          // ... Add more widgets as needed
        ],
      ),
    );
  }
}