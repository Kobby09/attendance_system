import 'package:attendance_system/pages/authentication/login/employee_login_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class EmployeeSignupPage extends StatefulWidget {
  const EmployeeSignupPage({super.key});

  @override
  State<EmployeeSignupPage> createState() => _EmployeeSignupPageState();
}

class _EmployeeSignupPageState extends State<EmployeeSignupPage> {
  var employeeIdController = TextEditingController();
  var fullNameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneNumberController = TextEditingController();
  var departmentController = TextEditingController();
  var roleController = TextEditingController();
  var genderController = TextEditingController();
  var startDateController = TextEditingController();
  var passwordController = TextEditingController();

  void signUpEmployee() async {
    // add employee
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      User? user = credential.user;

      if (user != null) {
        FirebaseFirestore.instance.collection('users').doc('employees.${employeeIdController.text}').set({
          'user_type': 'employee',
          'employee_id': employeeIdController.text,
          'full_name': fullNameController.text,
          'email': emailController.text,
          'phone_number': phoneNumberController.text,
          'department': departmentController.text,
          'role': roleController.text,
          'gender': genderController.text,
          'start_date': startDateController.text,
          'password': passwordController.text,
        });

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const EmployeeLoginPage(),
          ),
        );
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString()),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Employee Sign up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                controller: fullNameController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  labelText: "Full Name",
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
                controller: phoneNumberController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  labelText: "Phone Number",
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
                controller: departmentController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  labelText: "Department",
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
                controller: roleController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  labelText: "Role",
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
                controller: genderController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  labelText: "Gender",
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
                controller: startDateController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  labelText: "Start Date",
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
                height: 30,
              ),
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  onPressed: signUpEmployee,
                  child: const Center(
                    child: Text(
                      "SIGNUP",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
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
