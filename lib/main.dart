import 'package:flutter/material.dart';
import 'package:project_pemmob/screens/Dashboard_screen.dart';
import 'package:project_pemmob/screens/bmi_screen.dart';
import 'package:project_pemmob/screens/konversimatauang_screen.dart';
import 'package:project_pemmob/screens/konversisuhu_screen.dart';
import 'package:project_pemmob/screens/login_screen.dart';
import 'package:project_pemmob/screens/splash_screen.dart';
import 'package:project_pemmob/screens/register_screen.dart';
import 'package:project_pemmob/screens/profile_screen.dart';
import 'package:project_pemmob/screens/calculator_screen.dart';
import 'package:project_pemmob/screens/lenght_screen.dart';
import 'package:project_pemmob/screens/notes_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home:SplashScreen(),
    );
  }
}

