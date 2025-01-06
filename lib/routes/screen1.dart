import 'package:flutter/material.dart';
import 'package:wischool/routes/models/student.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key, required this.student});
  final Student student;
  @override
  Widget build(BuildContext context) {
    // Student student = ModalRoute.of(context)!.settings.arguments as Student;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Screen 1"),
            Text("Name: ${student.name}"),
            Text("Age: ${student.age}"),
            // TextButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, AppConst.screen2);
            //   },
            //   child: const Text("Go to Screen 2"),
            // ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("back to Home"),
            ),

            TextButton(
              onPressed: () {
                Navigator.pop(context, "Yes");
              },
              child: const Text("Yes"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context, "No");
              },
              child: const Text("No"),
            ),
          ],
        ),
      ),
    );
  }
}
