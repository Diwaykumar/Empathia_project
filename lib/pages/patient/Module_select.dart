import 'package:flutter/material.dart';
import 'package:fyp_project/common/widgets/common_module.dart';
import 'package:fyp_project/common/widgets/custom_button.dart';
import 'package:fyp_project/common/widgets/custom_textfield.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Services/auth_service.dart';

class selectModule extends StatefulWidget {
  const selectModule({Key? key}) : super(key: key);

  @override
  State<selectModule> createState() => _selectModuleState();
}

class _selectModuleState extends State<selectModule> {
  int selectedModulesCount = 0;

  Set<String> selectedModules = {};

  void handleModuleSelection(bool isSelected, String moduleId) {
    setState(() {
      if (isSelected) {
        if (selectedModules.length < 3) {
          selectedModulesCount++;
          selectedModules.add(moduleId);
        }
      } else {
        selectedModulesCount--;
        selectedModules.remove(moduleId);
      }
    });
  }

  void sendSelectedModules() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String userId = prefs.getString('userId') ?? '';

      if (userId.isEmpty) {
        print('Failed to get userId');
        return;
      }

      // Convert the Set to a List
      List<String> selectedModulesList = selectedModules.toList();

      AuthService().saveSelectedModules(
        selectedModules: selectedModulesList,
        userId: userId,
        context: context,
      );
    } catch (e) {
      print('Failed to get userId: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20, bottom: 30, right: 20, top: 50),
            child: CustomText(
                text: 'Select Your Modules',
                fontSize: 20,
                weight: FontWeight.w200,
                textColor: Colors.black87),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, bottom: 30, right: 20, top: 50),
            child: CustomText(
                text:
                    'Browse and select topics relevant to you.\nYou can change your selection later',
                fontSize: 16,
                weight: FontWeight.normal,
                textColor: Colors.black87),
          ),
          // Padding(
          //     padding: EdgeInsets.only(left: 20, bottom: 30, right: 20, top: 50),
          //     child: CustomText(text: 'Select Your Modules', Fontsize: 20, Weight: FontWeight.w200, textcolor: Colors.black87,)
          // ),
          // Padding(
          //     padding: EdgeInsets.only(left: 20, bottom: 20, right: 20),
          //     child: CustomText(text: 'Browse and select topics relevant to you.\nYou can change your selection later', Fontsize: 16, Weight: FontWeight.normal, textcolor: Colors.black87,)
          // ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth >= 600 ? 100 : 20),
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  CommonModule(
                    imagePath: 'assets/anxiety.jpg',
                    text: "Anxiety",
                    text2: "Reduce worries & \ncatastrophizing.",
                    onSelect: (bool isSelected) {
                      handleModuleSelection(isSelected, 'Anxiety');
                    },
                  ),
                  CommonModule(
                    imagePath: 'assets/module8.jpg',
                    text: "Thinking",
                    text2: "Negative thinking and\nrepetitive story",
                    onSelect: (bool isSelected) {
                      handleModuleSelection(isSelected, 'Thinking');
                    },
                  ),
                  CommonModule(
                    imagePath: 'assets/module1.jpg',
                    text: "Burnout",
                    text2: "Deal with burnout and\nlow motivation",
                    onSelect: (bool isSelected) {
                      handleModuleSelection(isSelected, 'Burnout');
                    },
                  ),
                  CommonModule(
                    imagePath: 'assets/module2.jpg',
                    text: "Sleep",
                    text2: "Decrease sleep related\nworries & fears.",
                    onSelect: (bool isSelected) {
                      handleModuleSelection(isSelected, 'Sleep');
                    },
                  ),
                  CommonModule(
                    imagePath: 'assets/module3.jpg',
                    text: "Eating",
                    text2: "Decrease fear of \neating & need \nfor control.",
                    onSelect: (bool isSelected) {
                      handleModuleSelection(isSelected, 'Eating');
                    },
                  ),
                  CommonModule(
                    imagePath: 'assets/module4.jpg',
                    text: "Body image",
                    text2: "Overcome body-\nfocusedself esteem",
                    onSelect: (bool isSelected) {
                      handleModuleSelection(isSelected, 'Body image');
                    },
                  ),
                  CommonModule(
                    imagePath: 'assets/module5.jpg',
                    text: "Confidence",
                    text2: "Reduce negative \nthinking self-criticism.",
                    onSelect: (bool isSelected) {
                      handleModuleSelection(isSelected, 'Confidence');
                    },
                  ),
                  CommonModule(
                    imagePath: 'assets/module6.jpg',
                    text: "ROCD",
                    text2: "Cope with relationship\ndoubts and fears",
                    onSelect: (bool isSelected) {
                      handleModuleSelection(isSelected, 'ROCD');
                    },
                  ),
                  CommonModule(
                    imagePath: 'assets/module9.jpg',
                    text: "Sexuality",
                    text2: "Reevaluate your beliefs\nabout sex & sexuality",
                    onSelect: (bool isSelected) {
                      handleModuleSelection(isSelected, 'Sexuality');
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: screenWidth >= 600 ? 100 : 20),
            child: CustomButton(
              onTap: () {
                if (selectedModulesCount >= 1 && selectedModulesCount <= 3) {
                  sendSelectedModules();
                  Navigator.pushNamed(context, '/homePatient');
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Please select between 1 and 3 modules'),
                      duration:
                          Duration(seconds: 1), // Adjust duration as needed
                    ),
                  );
                }
              },
              text: 'Continue',
            ),
          ),
        ],
      ),
    );
  }
}
