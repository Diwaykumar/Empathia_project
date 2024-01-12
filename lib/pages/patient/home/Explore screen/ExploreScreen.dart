import 'package:flutter/material.dart';
import 'collection/collection.dart';
import 'Tools/Tools.dart';

class ExploreScreen extends StatefulWidget {
  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget currentPage = _selectedIndex == 0 ? CollectionsPage() : ToolsPage();

    return Scaffold(
      appBar: AppBar(
        title: Text('Explore'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 0;
                    });
                  },
                  child: Text(
                    'Collections',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      decoration: _selectedIndex == 0
                          ? TextDecoration.underline
                          : TextDecoration.none,
                      decorationThickness: 2.5,
                      decorationColor: _selectedIndex == 0
                          ? Colors.blue
                          : Colors.transparent,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                  },
                  child: Text(
                    'Tools',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      decoration: _selectedIndex == 1
                          ? TextDecoration.underline
                          : TextDecoration.none,
                      decorationThickness: 2.5,
                      decorationColor: _selectedIndex == 1
                          ? Colors.blue
                          : Colors.transparent,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: currentPage,
          ),
        ],
      ),
    );
  }
}



