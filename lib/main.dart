import 'package:attendance_system/pages/authentication/login_page.dart';
import 'package:attendance_system/theme.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const AttendanceSystem());
}

class AttendanceSystem extends StatelessWidget {
  const AttendanceSystem({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.customTheme,
      home: const LoginPage(),
    );
  }
}