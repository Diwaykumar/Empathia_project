import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fyp_project/Services/auth_service.dart';
import 'package:fyp_project/pages/onboarding/create_acc.dart';
import 'package:fyp_project/pages/onboarding/create_acc_as.dart';
import 'package:fyp_project/pages/onboarding/sign_in_as.dart';
import 'package:fyp_project/pages/patient/Home/home_patient.dart';
import 'package:fyp_project/pages/patient/module_select.dart';
import 'package:fyp_project/pages/patient/create_account_patient.dart';
import 'package:fyp_project/pages/patient/forgot_passd_pat_2.dart';
import 'package:fyp_project/pages/patient/forgot_passwd_pat.dart';
import 'package:fyp_project/pages/patient/forgot_passwd_pat_3.dart';
import 'package:fyp_project/pages/patient/signin_as_patient.dart';
import 'package:fyp_project/providers/user_provider.dart';
import 'package:fyp_project/pages/psychologist/create_account_psych.dart';
import 'package:fyp_project/pages/psychologist/forgot-passwd_psych.dart';
import 'package:fyp_project/pages/psychologist/forgot_passwd_psych2.dart';
import 'package:fyp_project/pages/psychologist/forgot_passwd_psych3.dart';
import 'package:fyp_project/pages/psychologist/home_psych.dart';
import 'package:fyp_project/pages/psychologist/signin_as_psych.dart';
import 'package:fyp_project/pages/onboarding/on_boarding.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Future.delayed(const Duration(seconds: 2));
  FlutterNativeSplash.remove();

  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => UserProvider(),
    )
  ], child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthService authService = AuthService();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/createAcc': (context) => const CreateAccount(),
        '/onBoarding': (context) => const Onboarding(),
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
        '/selectModule': (context) => const SelectModule(),
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  final AuthService authService = AuthService();

  static const String KEYLOGIN = "login";

  @override
  void initState() {
    super.initState();
    whereToGo();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }

  void whereToGo() async {
    var sharedPref = await SharedPreferences.getInstance();
    var isLoggedIn = sharedPref.getBool(KEYLOGIN);
    var userType = sharedPref
        .getString('userType'); // Fetch userType from shared preferences

    if (isLoggedIn != null) {
      if (isLoggedIn) {
        if (userType == 'patient') {
          Navigator.pushReplacementNamed(context, "/homePatient");
        } else if (userType == 'psychologist') {
          Navigator.pushReplacementNamed(context, "/homePsych");
        }
      } else {
        Navigator.pushReplacementNamed(context, "/onBoarding");
      }
    } else {
      Navigator.pushReplacementNamed(context, "/onBoarding");
    }
  }
}
