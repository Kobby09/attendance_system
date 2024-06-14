import 'package:attendance_system/pages/authentication/signup/signup_account_type_page.dart';
import 'package:attendance_system/pages/employees/employees_main_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class EmployeeLoginPage extends StatefulWidget {
  const EmployeeLoginPage({super.key});

  @override
  State<EmployeeLoginPage> createState() => _EmployeeLoginPageState();
}

class _EmployeeLoginPageState extends State<EmployeeLoginPage> {
  var employeeIdController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  void loginEmployee() async {
    // login user
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      User? user = credential.user;

      if (user != null) {
        await FirebaseFirestore.instance
            .collection('users')
            .doc('employees.${employeeIdController.text}')
            .get()
            .then((DocumentSnapshot documentSnapshot) {
          if (documentSnapshot.exists) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const EmployeesMainPage(),
              ),
            );
          }
        });
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

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
              TextField(
                controller: employeeIdController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  labelText: "Employee ID",
                ),
                style: const TextStyle(
                  color: Color.fromRGBO(19, 47, 64, 1),
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: "Email Address",
                ),
                style: const TextStyle(
                  color: Color.fromRGBO(19, 47, 64, 1),
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Password",
                ),
                style: const TextStyle(
                  color: Color.fromRGBO(19, 47, 64, 1),
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: loginEmployee,
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
                      builder: (context) => const SignUpAccountTypePage(),
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
