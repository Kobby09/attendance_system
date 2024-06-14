import 'package:attendance_system/pages/employees/tabs/employee_Attendance.dart';
import 'package:attendance_system/pages/employees/tabs/employee_account.dart';
import 'package:attendance_system/pages/employees/tabs/employee_dashboard.dart';
import 'package:attendance_system/pages/employees/tabs/employee_events.dart';
import 'package:flutter/material.dart';

class EmployeesMainPage extends StatefulWidget {
  const EmployeesMainPage({super.key});

  @override
  State<EmployeesMainPage> createState() => _EmployeesMainPageState();
}

class _EmployeesMainPageState extends State<EmployeesMainPage> {
  int _currentIndex = 0;

  final List _tabs = [
    const EmployeeDashboard(),
    const EmployeeAttendance(),
    const EmployeeEvents(),
    const EmployeeAccount(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
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
            ),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
