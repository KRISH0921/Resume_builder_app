import 'package:flutter/material.dart';
import 'package:resume_builder_app/education_screen/education_screen.dart';
import 'package:resume_builder_app/forgot_password/forgot_password.dart';
import 'package:resume_builder_app/home_screen/home_screen.dart';
import 'package:resume_builder_app/login_screen/login_screen.dart';
import 'package:resume_builder_app/maker/maker.dart';
import 'package:resume_builder_app/other_activities/other_activities.dart';
import 'package:resume_builder_app/password_verify/password_verify.dart';
import 'package:resume_builder_app/personal_info/personal_info.dart';
import 'package:resume_builder_app/reference/reference.dart';
import 'package:resume_builder_app/signup_screen/signup_screen.dart';
import 'package:resume_builder_app/skill/skill.dart';
import 'package:resume_builder_app/splash_screen/splash_screen.dart';
import 'package:resume_builder_app/work_experience/work_experience.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => SplashScreen(),
        "login": (context) => LoginScreen(),
        "sign": (context) => SignupScreen(),
        "forgot": (context) => ForgotPassword(),
        "verify": (context) => PasswordVerify(),
        "home": (context) => HomeScreen(),
        "info": (context) => PersonalInfo(),
        "educ": (context) => EducationScreen(),
        "skill": (context) => Skill(),
        "other": (context) => OtherActivities(),
        "references": (context) => References(),
        "work": (context) => WorkExperience(),
        "maker":(context) => Maker(),
      },
    );
  }
}
