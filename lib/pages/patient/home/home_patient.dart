import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePatient extends StatefulWidget {
  const HomePatient({Key? key}) : super(key: key);

  @override
  State<HomePatient> createState() => _HomePatientState();
}

class _HomePatientState extends State<HomePatient> {
  late String _greeting;

  @override
  void initState() {
    _greeting = _getGreeting();
    super.initState();
  }

  String _getGreeting() {
    final DateTime now = DateTime.now();
    final int hour = now.hour;
    String greeting;

    if (hour >= 5 && hour < 12) {
      greeting = 'Hello, Good Morning';
    } else if (hour >= 12 && hour < 16) {
      greeting = 'Hello, Good Afternoon';
    } else if (hour >= 16 && hour < 20) {
      greeting = 'Hello, Good Evening';
    } else {
      greeting = 'Hello, Good Night';
    }

    return greeting;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white10,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
            backgroundColor: Colors.white10,
            color: Colors.black,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.cyan.shade600,
            gap: 8,
            onTabChange: (index) {
              (index);
            },
            padding: const EdgeInsets.all(16.0),
            tabs: const [
              GButton(icon: Icons.home, text: 'Home'),
              GButton(icon: Icons.explore_outlined, text: 'Explore'),
              GButton(icon: Icons.groups, text: 'Community'),
              GButton(icon: Icons.person, text: 'Profile'),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.menu_outlined,
                      color: Colors.black, size: 40),
                ),
              ),
              Expanded(
                flex: 2,
                child: Image.asset('assets/logo.png', height: 50, width: 100),
              ),
              Expanded(
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notification_important,
                      color: Colors.black, size: 40),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }

  @override
  Future<void> debugFillProperties(
      DiagnosticPropertiesBuilder properties) async {
    super.debugFillProperties(properties);
    properties.add(StringProperty('_greeting', _greeting));
  }
}
