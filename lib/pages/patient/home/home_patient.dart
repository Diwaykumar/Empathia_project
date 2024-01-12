import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'Community/Community.dart';
import 'homescreen.dart';
import 'Explore screen/ExploreScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Define routes for each page
      routes: {
        '/home': (context) => HomeScreen(),
        '/explore': (context) => ExploreScreen(),
        '/community': (context) => Community(),
        '/profile': (context) => ProfileScreen(),
      },
      home: const HomePatient(),
    );
  }
}

class HomePatient extends StatefulWidget {
  const HomePatient({Key? key}) : super(key: key);

  @override
  State<HomePatient> createState() => _HomePatientState();
}

class _HomePatientState extends State<HomePatient> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    ExploreScreen(),
    Community(),
    ProfileScreen(),
  ];

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
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
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
        child: _pages[_selectedIndex],
      ),
    );
  }
}








class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/home');
        },
        child: const Text('Go to Home'),
      ),
    );
  }
}
