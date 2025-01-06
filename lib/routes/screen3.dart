// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'models/product.dart';

class Screen3 extends StatelessWidget {
  const Screen3({
    super.key,
    required this.data,
  });
  // final Product prodact;
  final Map<String, dynamic> data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Screen 3"),
            Text("name: ${data['product'].name}"),
            Text("price: ${data['product'].price}"),
            Text("description: ${data['product'].description}"),
            Text("name: ${data['student'].name}"),
            Text("age: ${data['student'].age}"),
            TextButton(
              onPressed:
                  //  onPressed,
                  () {
                Navigator.pop(context);
              },
              child: const Text("back to Home"),
            ),
          ],
        ),
      ),
    );
  }
}
