import 'package:attendance_system/pages/authentication/signup/teacher_signup_page.dart';
import 'package:attendance_system/pages/authentication/signup/student_signup_page.dart';
import 'package:flutter/material.dart';

class AccountTypePage extends StatelessWidget {
  const AccountTypePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // backgroundColor: const Color.fromRGBO(153, 197, 225, 1),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/hello.png',
              height: 350,
            ),
            const Text(
              'Who are you?',
              style: TextStyle(
                color: Color.fromRGBO(19, 47, 64, 1),
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 40,
              child: OutlinedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const StudentSignUpPage(),
                    ),
                  );
                },
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    color: Color.fromRGBO(19, 47, 64, 0.7),
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                ),
                icon: const Icon(
                  Icons.group,
                  color: Color.fromRGBO(19, 47, 64, 1),
                ),
                label: const Text(
                  "Are you a student? Click here",
                  style: TextStyle(
                    color: Color.fromRGBO(19, 47, 64, 1),
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.underline,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 40,
              child: OutlinedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TeacherSignUpPage(),
                    ),
                  );
                },
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    color: Color.fromRGBO(19, 47, 64, 0.7),
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                ),
                icon: const Icon(
                  Icons.person,
                  color: Color.fromRGBO(19, 47, 64, 1),
                ),
                label: const Text(
                  "Are you an employee? Click here",
                  style: TextStyle(
                    color: Color.fromRGBO(19, 47, 64, 1),
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.underline,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
