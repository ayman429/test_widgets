// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'models/product.dart';

class Screen2 extends StatelessWidget {
  const Screen2({
    super.key,
    required this.prodact,
  });
  final Product prodact;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Screen 2"),
            Text("name: ${prodact.name}"),
            Text("price: ${prodact.price}"),
            Text("description: ${prodact.description}"),
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
