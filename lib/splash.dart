import 'dart:async';

import 'package:doula/screens/auth/doula_dashboard_earnings.dart';
import 'package:doula/screens/auth/doula_onboard_help.dart';
import 'package:doula/screens/auth/doula_onboard_intro.dart';
import 'package:doula/screens/auth/onboard_welcome_page.dart';
import 'package:doula/screens/auth/select_language.dart';
import 'package:doula/screens/auth/select_your_skillsets.dart';
import 'package:doula/screens/auth/setup_profile/setup_profile_step1.dart';
import 'package:doula/screens/auth/setup_profile/setup_profile_step2.dart';
import 'package:doula/screens/home/home.dart';
import 'package:doula/screens/profile/doula_profile.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (context) => Home()), (route) => false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 90,
              width: 500,
            ),
            CircularProgressIndicator(
              strokeWidth: 1,
            ),
          ],
        ),
      ),
    );
  }
}
