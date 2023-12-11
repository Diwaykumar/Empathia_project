import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePatient extends StatefulWidget {
  const HomePatient({super.key});

  @override
  State<HomePatient> createState() => _HomePatientState();
}

class _HomePatientState extends State<HomePatient> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black12,
        bottomNavigationBar: Container(
          color: Colors.white10,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
            child: GNav(
              backgroundColor: Colors.white10,
              color: Colors.black,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.cyan.shade700,
              gap: 8,
              onTabChange: (index) {
                (index);
              },
              padding: const EdgeInsets.all(16.0),
              tabs: const [
                GButton(icon: Icons.home, text: 'Home'),
                GButton(icon: Icons.article_outlined, text: 'Article'),
                GButton(icon: Icons.groups, text: 'Community'),
                GButton(icon: Icons.settings, text: 'Setting'),
              ],
            ),
          ),
        ),
        body: const SafeArea(child: Padding(padding: EdgeInsets.zero)),
      ),
    );
  }
}
