import 'package:flutter/material.dart';
import 'package:fyp_project/Services/auth_service.dart';
import 'package:fyp_project/pages/create_acc.dart';
import 'package:fyp_project/pages/create_acc_as.dart';
import 'package:fyp_project/pages/sign_in_as.dart';
import 'package:fyp_project/patient/create_account_patient.dart';
import 'package:fyp_project/patient/forgot_passd_pat_2.dart';
import 'package:fyp_project/patient/forgot_passwd_pat.dart';
import 'package:fyp_project/patient/forgot_passwd_pat_3.dart';
import 'package:fyp_project/patient/home_patient.dart';
import 'package:fyp_project/patient/signin_as_patient.dart';
import 'package:fyp_project/providers/user_provider.dart';
import 'package:fyp_project/psychologist/create_account_psych.dart';
import 'package:fyp_project/psychologist/forgot-passwd_psych.dart';
import 'package:fyp_project/psychologist/forgot_passwd_psych2.dart';
import 'package:fyp_project/psychologist/forgot_passwd_psych3.dart';
import 'package:fyp_project/psychologist/home_psych.dart';
import 'package:fyp_project/psychologist/signin_as_psych.dart';
import 'pages/on_boarding.dart';
import 'package:provider/provider.dart';

void main() {

  runApp(MultiProvider(providers:[
    ChangeNotifierProvider(create: (context) => UserProvider(),)
  ],child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final AuthService authService = AuthService();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/createAcc': (context) => const CreateAccount(),
        '/createAccAs': (context) => const CreateAccAs(),
        '/signInAs': (context) => const SignInAs(),
        '/createAccAsPsych': (context) => const CreateAccountPsych(),
        '/createAccAsPatient': (context) => const CreateAccountPatient(),
        '/signInAsPatient': (context) => const SignInAsPatient(),
        '/signInAsPsych': (context) => const SignInAsPsych(),
        '/homePatient': (context) => const HomePatient(),
        '/homePsych': (context) => const HomePsych(),
        '/forgotPasswdPatient': (context) => const ForgotPasswordPatient(),
        '/forgotPasswdPatient2': (context) => const ForgotPasswdPatient2(),
        '/forgotPasswdPatient3': (context) => const ForgotPasswdPatient3(),
        '/forgotPasswdPsych': (context) => const ForgotPasswordPsych(),
        '/forgotPasswdPsych2': (context) => const ForgotPasswdPsych2(),
        '/forgotPasswdPsych3': (context) => const ForgotPasswdPsych3(),
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add a delay of 3 seconds and then navigate to the next screen
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const Onboarding()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: Stack(
        children: [
          // Image.asset(
          //  'Main.png',
          //  width: 500,
          //  fit: BoxFit.cover,
          // ),
          Center(
            child: Image.asset(
              'empathia.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
