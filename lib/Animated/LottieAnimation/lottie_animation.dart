import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimationWidget extends StatelessWidget {
  const LottieAnimationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lottie Animation'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Lottie.asset(
          'assets/lottie/loading1.json',
          height: 200,
          width: 200,
        ),
      ),
    );
  }
}
