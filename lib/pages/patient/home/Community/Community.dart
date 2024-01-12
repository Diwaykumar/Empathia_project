import 'package:flutter/material.dart';
import 'Discussions/Discussion.dart';
import 'Chat Groups/Chat_groups.dart';

class Community extends StatefulWidget {
  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget currentPage = _selectedIndex == 0 ? Discussion() : chatGroups();

    return Scaffold(
      appBar: AppBar(
        title: Text('Community'),
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
                    'Discussion',
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
                    'Chat Groups',
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



