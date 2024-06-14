import 'package:flutter/material.dart';

class StudentMainPage extends StatelessWidget {
  const StudentMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.dashboard,
            ),
            label: "Dashboard",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.check_circle,
            ),
            label: "Attendance",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.event,
            ),
            label: "Event",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              color: Color.fromRGBO(19, 47, 64, 1),
            ),
            label: "Account",
          ),
        ],
        backgroundColor: const Color.fromRGBO(19, 47, 64, 1),
      ),
    );
  }
}
