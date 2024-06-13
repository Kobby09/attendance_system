import 'package:attendance_system/pages/authentication/signup/account_type_page.dart';
import 'package:attendance_system/pages/dashboard.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // backgroundColor: const Color.fromRGBO(153, 197, 225, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/attendance.png",
                height: 300,
                width: 300,
              ),
              const Text(
                "Login",
                style: TextStyle(
                  color: Color.fromRGBO(19, 47, 64, 1),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email Address",
                ),
                style: TextStyle(
                  color: Color.fromRGBO(19, 47, 64, 1),
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                ),
                style: TextStyle(
                  color: Color.fromRGBO(19, 47, 64, 1),
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Dashboard(),
                    ),
                  );
                },
                child: const SizedBox(
                  height: 50,
                  child: Center(
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AccountTypePage(),
                    ),
                  );
                },
                child: const Text(
                  "Don't have an account, Sign up here",
                  style: TextStyle(
                    color: Color.fromRGBO(19, 47, 64, 1),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
