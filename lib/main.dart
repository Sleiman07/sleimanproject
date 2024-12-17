import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:the_project/plansPage.dart';
import 'package:the_project/startPage.dart';
import 'auth/login.dart';
import 'auth/signup.dart';
import 'cotchs.dart';
import 'homePage.dart';
import 'inactive/chest/chestExercises.dart';
import 'inactive/chest/exercises/inactiveChest1.dart';
import 'inactive/inaciveExercises.dart';


void main() {
  runApp(
      DevicePreview(
        backgroundColor: Colors.white,
        enabled: !kReleaseMode,
        builder: (context) => const MyApp(),
      )
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "homePage",
      routes: {
        "login" : (context) => const login(),
        "signup" : (context) => const signup(),
        "homePage" : (context) => const homePage(),
        "startPage" : (context) => const startPage(),
        "plansPage" : (context) => const plansPage(),
        "cotchs" : (context) => const cotchs(),
        "inactiveExercises" : (context) => const inactiveExercises(),
        "chestExercises" : (context) => const chestExercises(),
        "inactiveChest1" : (context) => const inactiveChest1()
      },
    );
  }
}

