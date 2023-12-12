import 'package:flutter/material.dart';

class CommonModule extends StatefulWidget {
  final String imagePath;
  final String text;
  final String text2;
  final Function(bool isSelected) onSelect;

  CommonModule({
    Key? key,
    required this.imagePath,
    required this.text,
    required this.text2,
    required this.onSelect,
  }) : super(key: key);

  @override
  _CommonModuleState createState() => _CommonModuleState();
}

class _CommonModuleState extends State<CommonModule> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    double containerHeight = MediaQuery.of(context).size.width * 0.2;
    double containerWidth = MediaQuery.of(context).size.width * 0.5;

    return GestureDetector(
      onTap: () {
        setState(() {
          if (!isSelected) {
            // Select this module if the current count is less than 3
            if (_getSelectedModulesCount() < 3) {
              isSelected = true;
              widget.onSelect(true);
            }
          } else {
            isSelected = false;
            widget.onSelect(false);
          }
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: containerHeight,
          width: containerWidth,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(widget.imagePath),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10),
            border:
                isSelected ? Border.all(color: Colors.blue, width: 2.0) : null,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 6, top: 6, bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Text(
                      widget.text,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      widget.text2,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  int _getSelectedModulesCount() {
    // This function returns the count of selected modules in the grid
    // You can access this from your selectModule screen to check the count of selected modules
    // Example: selectedModules.where((module) => module.isSelected).length
    return 0; // Return the actual count based on your implementation
  }
}
