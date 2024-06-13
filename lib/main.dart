import 'package:attendance_system/pages/authentication/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(19, 47, 64, 1),
        ),
        textTheme: GoogleFonts.montserratTextTheme(),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}
