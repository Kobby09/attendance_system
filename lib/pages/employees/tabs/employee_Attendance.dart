import 'package:flutter/material.dart';

class EmployeeAttendance extends StatelessWidget {
  const EmployeeAttendance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/attend.png",
              height: 400,
            ),
            Text(
              "Attendance record is yet to be uploaded by school board",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
