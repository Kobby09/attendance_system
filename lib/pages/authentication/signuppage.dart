import 'package:attendance_system/pages/authentication/signup/employee_signup.dart';
import 'package:attendance_system/pages/authentication/signup/student_signup.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(153, 197, 225, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const StudentSignUpPage(),
                  ),
                );
              },
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
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EmployeeSignupPage(),
                  ),
                );
              },
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
