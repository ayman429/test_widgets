import 'package:flutter/material.dart';
import 'package:wischool/routes/models/product.dart';
import 'package:wischool/routes/models/student.dart';
import 'package:wischool/routes/routes.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String x = "No Data";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Home Page "),
            Text("Return Data : $x"),
            TextButton(
              onPressed: () async {
                x = await Navigator.pushNamed(context, AppRoutes.screen1,
                        arguments: Student(name: "Ayman Mansour", age: 24))
                    as String;
                print(x);
                setState(() {});
              },
              child: const Text("Go to Screen 1"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.screen2,
                    arguments: Product(
                        name: "Prodact1",
                        price: 50,
                        description: "description1"));
              },
              child: const Text("Go to Screen 2"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.screen3, arguments: {
                  "product": Product(
                      name: "Prodact1", price: 50, description: "description1"),
                  "student": Student(name: "Ayman Mansour", age: 24)
                });
              },
              child: const Text("Go to Screen 3"),
            )
          ],
        ),
      ),
    );
  }
}
