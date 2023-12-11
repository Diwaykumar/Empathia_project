import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:intl/intl.dart';
import 'package:fyp_project/pages/patient/Emoticons/emoticon_face.dart';
import 'package:fyp_project/pages/patient/Emoticons/exercise_title.dart';

class HomePatient extends StatefulWidget {
  const HomePatient({super.key});

  @override
  State<HomePatient> createState() => _HomePatientState();
}

class _HomePatientState extends State<HomePatient> {
  late String _timeString;

  @override
  void initState() {
    _timeString = _formatDateTime(DateTime.now());
    Timer.periodic(const Duration(seconds: 1), (Timer t) => _getTime());
    super.initState();
  }

  String _formatDateTime(DateTime dateTime) {
    return DateFormat('dd-MM-yyyy').format(dateTime);
  }

  void _getTime() {
    final DateTime now = DateTime.now();
    final String formattedDateTime = _formatDateTime(now);
    setState(() {
      _timeString = formattedDateTime;
    });
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
              GButton(icon: Icons.article_outlined, text: 'Article'),
              GButton(icon: Icons.groups, text: 'Community'),
              GButton(icon: Icons.settings, text: 'Setting'),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "HI, Diway",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(_timeString,style: const TextStyle(fontSize: 20,color: Colors.black)),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.all(12),
                        child: const Icon(Icons.notifications,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: const Row(
                      children: [
                        Icon(Icons.search, color: Colors.white),
                        SizedBox(width: 5),
                        Text(
                          'search',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "How do you feel?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.more_horiz, color: Colors.white),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          GestureDetector(child: const EmoticonFace(emoticonFace: '😩')),
                          const SizedBox(height: 8),
                          const Text('Bad', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(child: const EmoticonFace(emoticonFace: '🙂')),
                          const SizedBox(height: 8),
                          const Text('Fine', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(child: const EmoticonFace(emoticonFace: '😄')),
                          const SizedBox(height: 8),
                          const Text('Well', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(child: const EmoticonFace(emoticonFace: '🥳')),
                          const SizedBox(height: 8),
                          const Text('Excellent',
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(25),
                color: Colors.grey[200],
                child: Center(
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Exercises',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Expanded(
                        child: ListView(
                          children: const [
                            ExerciseTitle(
                              icon: Icons.favorite,
                              exersiceName: 'Speaking Skills',
                              NumberOfExercise: 16,
                              color: Colors.orange,
                            ),
                            ExerciseTitle(
                              icon: Icons.person,
                              exersiceName: 'Reading Skills',
                              NumberOfExercise: 16,
                              color: Colors.green,
                            ),
                            ExerciseTitle(
                              icon: Icons.star,
                              exersiceName: 'Writing Skills',
                              NumberOfExercise: 16,
                              color: Colors.pink,
                            ),
                            ExerciseTitle(
                              icon: Icons.star,
                              exersiceName: 'Listening Skills',
                              NumberOfExercise: 16,
                              color: Color.fromARGB(255, 55, 177, 201),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  @override
  Future<void> debugFillProperties(DiagnosticPropertiesBuilder properties) async {
    super.debugFillProperties(properties);
    properties.add(StringProperty('_timeString', _timeString));
  }
}

