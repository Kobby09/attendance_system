import 'package:attendance_system/pages/authentication/login_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class StudentSignUpPage extends StatefulWidget {
  const StudentSignUpPage({super.key});

  @override
  State<StudentSignUpPage> createState() => _StudentSignUpPageState();
}

class _StudentSignUpPageState extends State<StudentSignUpPage> {
  var studentId = TextEditingController();
  var fullName = TextEditingController();
  var email = TextEditingController();
  var phoneNumber = TextEditingController();
  var course = TextEditingController();
  var studentClass = TextEditingController();
  var gender = TextEditingController();
  var startDate = TextEditingController();
  var password = TextEditingController();

  void signUpStudent() async {
    // add student
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email.text,
        password: password.text,
      );

      // CollectionReference students =

      FirebaseFirestore.instance.collection('students').add({
        'student_id': studentId.text,
        'full_name': fullName.text,
        'email': email.text,
        'phone_number': phoneNumber.text,
        'course': course.text,
        'student_class': studentClass.text,
        'gender': gender.text,
        'start_date': startDate.text,
      });

      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => const LoginPage(),
      //   ),
      // );

      // 'users/${credential.user!.uid}'


    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Sign up'),
        backgroundColor: const Color.fromRGBO(153, 197, 225, 1),
      ),
      backgroundColor: const Color.fromRGBO(153, 197, 225, 1),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: studentId,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  labelText: "Student ID",
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
                style: const TextStyle(
                  color: Color.fromRGBO(19, 47, 64, 1),
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: fullName,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
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
                style: const TextStyle(
                  color: Color.fromRGBO(19, 47, 64, 1),
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: email,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
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
                style: const TextStyle(
                  color: Color.fromRGBO(19, 47, 64, 1),
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: phoneNumber,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
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
                style: const TextStyle(
                  color: Color.fromRGBO(19, 47, 64, 1),
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: course,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  labelText: "Course",
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
                style: const TextStyle(
                  color: Color.fromRGBO(19, 47, 64, 1),
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: studentClass,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  labelText: "Class",
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
                style: const TextStyle(
                  color: Color.fromRGBO(19, 47, 64, 1),
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: gender,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
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
                style: const TextStyle(
                  color: Color.fromRGBO(19, 47, 64, 1),
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: startDate,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
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
                style: const TextStyle(
                  color: Color.fromRGBO(19, 47, 64, 1),
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: password,
                obscureText: true,
                decoration: const InputDecoration(
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
                style: const TextStyle(
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
                  onPressed: signUpStudent,
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
