import 'package:attendance_system/pages/authentication/login_page.dart';
import 'package:flutter/material.dart';

class TeacherSignUpPage extends StatelessWidget {
  const TeacherSignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Employee Sign up'),
        backgroundColor: const Color.fromRGBO(153, 197, 225, 1),
      ),
      backgroundColor: const Color.fromRGBO(153, 197, 225, 1),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Employee ID",
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(19, 47, 64, 0.7),
                    fontSize: 18.0,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(19, 47, 64, 0.7),
                    ),
                  ),
                ),
                style: TextStyle(
                  color: Color.fromRGBO(19, 47, 64, 1),
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Full Name",
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(19, 47, 64, 0.7),
                    fontSize: 18.0,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(19, 47, 64, 0.7),
                    ),
                  ),
                ),
                style: TextStyle(
                  color: Color.fromRGBO(19, 47, 64, 1),
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email Address",
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(19, 47, 64, 0.7),
                    fontSize: 18.0,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(19, 47, 64, 0.7),
                    ),
                  ),
                ),
                style: TextStyle(
                  color: Color.fromRGBO(19, 47, 64, 1),
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: "Phone Number",
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(19, 47, 64, 0.7),
                    fontSize: 18.0,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(19, 47, 64, 0.7),
                    ),
                  ),
                ),
                style: TextStyle(
                  color: Color.fromRGBO(19, 47, 64, 1),
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Department",
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(19, 47, 64, 0.7),
                    fontSize: 18.0,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(19, 47, 64, 0.7),
                    ),
                  ),
                ),
                style: TextStyle(
                  color: Color.fromRGBO(19, 47, 64, 1),
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Role",
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(19, 47, 64, 0.7),
                    fontSize: 18.0,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(19, 47, 64, 0.7),
                    ),
                  ),
                ),
                style: TextStyle(
                  color: Color.fromRGBO(19, 47, 64, 1),
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Gender",
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(19, 47, 64, 0.7),
                    fontSize: 18.0,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(19, 47, 64, 0.7),
                    ),
                  ),
                ),
                style: TextStyle(
                  color: Color.fromRGBO(19, 47, 64, 1),
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Start Date",
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(19, 47, 64, 0.7),
                    fontSize: 18.0,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(19, 47, 64, 0.7),
                    ),
                  ),
                ),
                style: TextStyle(
                  color: Color.fromRGBO(19, 47, 64, 1),
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(19, 47, 64, 0.7),
                    fontSize: 18.0,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(19, 47, 64, 0.7),
                    ),
                  ),
                ),
                style: TextStyle(
                  color: Color.fromRGBO(19, 47, 64, 1),
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(19, 47, 64, 0.7),
                  ),
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
