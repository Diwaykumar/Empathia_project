import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:fyp_project/constant/utils.dart';
import 'package:fyp_project/models/user.dart';
import 'package:http/http.dart' as http;
import 'package:fyp_project/constant/global_variables.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constant/error_handling.dart';
import 'package:provider/provider.dart';
import 'package:fyp_project/providers/user_provider.dart';

class AuthService {
  signUpUser({
    required BuildContext context,
    required String email,
    required String password,
    required String name,
    required String phone,
    required String userType,
  }) async {
    try {
      User user = User(
        id: '',
        name: name,
        email: email,
        password: password,
        address: '',
        type: userType,
        token: '',
        phone: phone,
      );

      http.Response res = await http.post(
        Uri.parse('$uri/api/signup/$userType'),
        body: user.toJson(),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () {
          showSnackBar(
              context, 'Account created. Login with the same credentials.');
          // Delay before navigating to the respective login screen
          Future.delayed(Duration(seconds: 2), () {
            if (userType == 'patient') {
              Navigator.pushNamed(context, '/signInAsPatient');
            } else if (userType == 'psycologist') {
              Navigator.pushNamed(context, '/signInAsPsych');
            }
          });
        },
      );
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }

  signInUser({
    required BuildContext context,
    required String email,
    required String password,
    required String userType,
  }) async {
    try {
      http.Response res = await http.post(
        Uri.parse('$uri/api/signin/$userType'),
        body: jsonEncode({
          'email': email,
          'password': password,
        }),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      // print(res.body);

      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () async {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          Provider.of<UserProvider>(context, listen: false).setUser(res.body);
          await prefs.setString('x-auth-token', jsonDecode(res.body)['token']);
          await prefs.setString('userType', userType);
          showSnackBar(context, 'Login Succesfull');
          Future.delayed(Duration(seconds: 2), () {
            if (userType == 'patient') {
              // Navigator.pushAndRemoveUntil(context, '/homePatient');
              Navigator.pushNamedAndRemoveUntil(
                  context, '/selectModule', (route) => false);
            } else if (userType == 'psycologist') {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/homePsych', (route) => false);
            }
          });
        },

      );

    } catch (e) {
      // print( e.toString());
      showSnackBar(context, e.toString());
    }
  }
}
