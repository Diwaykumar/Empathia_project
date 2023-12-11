import 'package:flutter/material.dart';
import 'package:fyp_project/common/widgets/common_module.dart';

class selectModule extends StatefulWidget {
  const selectModule({super.key});

  @override
  State<selectModule> createState() => _selectModuleState();
}

class _selectModuleState extends State<selectModule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            CommonModule(imagePath: 'assets/anxiety.jpg', text: "Nothing"),
            // Container(
            //   height: 50,
            //   width: 50,
            //   decoration: BoxDecoration(
            //     image: DecorationImage(image: AssetImage('assets/anxiety.jpg'),
            //       fit: BoxFit.cover,
            //     ),
            //     borderRadius: BorderRadius.circular(8),
            //   ),
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.end,
            //     children: [
            //       Row(
            //         children: [
            //           Text('Nothing'),
            //           // Text(text)
            //         ],
            //       )
            //     ],
            //   ),
            // )
          ],
        ),

      ),
      // child: commonModule(imagePath: 'assets/anxiety.jpg', text: 'Nothing'),
    );
  }
}
