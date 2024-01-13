import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String getGreetings() {
    final hour = DateTime.now().hour;

    if (hour < 12) {
      return 'Good Morning';
    } else if (hour < 17) {
      return 'Good Afternoon';
    } else {
      return 'Good Evening';
    }
  }

  Future<void> _launchPhoneDialer() async {
    const phoneNumber = 'tel:+923432402620'; // replace with your phone number
    if (await canLaunchUrl(phoneNumber as Uri)) {
      await launchUrl(phoneNumber as Uri);
    } else {
      throw 'Could not launch $phoneNumber';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: const Color(0xFF43766C),
          actions: [
            Builder(
              builder: (context) => IconButton(
                icon: const Icon(Icons.warning),
                onPressed: () => Scaffold.of(context).openEndDrawer(),
              ),
            ),
          ],
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF43766C),
                Color(0xFF637E76),
              ],
            ),
          ),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(children: [
                  Text(
                    '${getGreetings()},\nNice to see you!',
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ]),
              ),
            ],
          ),
        ),
        endDrawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFF43766C),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'EMERGENCY RESOURCES',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const ListTile(
                title: Text(
                  'If you are currently experiencing a mental health'
                      'emergency or are in danger due to thoughts of suicide,'
                      'please do to your nearest emergency room or call our helpline.',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
              ),
              const SizedBox(height: 3.0),
              const ListTile(
                  title: Text(
                    'If you are not in immediate danger but would like to talk to'
                        'someone about your thoughts of suicide, you can also'
                        'contact a therapist.',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  )),
              const ListTile(
                title: Text(
                  'Szabist-Karachi',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: GestureDetector(
                  onTap: _launchPhoneDialer, // Call the function when tapped
                  child: const Text('0343-2402620',
                      style: TextStyle(fontSize: 14, color: Color(0xFF1BC88C))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
