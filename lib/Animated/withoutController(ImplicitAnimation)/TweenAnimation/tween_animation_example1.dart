import 'package:flutter/material.dart';

class TweenAnimationExample1 extends StatefulWidget {
  const TweenAnimationExample1({super.key});

  @override
  State<TweenAnimationExample1> createState() => _TweenAnimationExample1State();
}

class _TweenAnimationExample1State extends State<TweenAnimationExample1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tween Animation'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: TweenAnimationBuilder(
          builder: (context, value, child) {
            return Text(
              value.toString(),
              style: _style(),
            );
          },
          tween: IntTween(begin: 0, end: 100),
          duration: const Duration(seconds: 1),
        ),
      ),
    );
  }

  TextStyle _style() {
    return const TextStyle(
      fontSize: 120,
      fontWeight: FontWeight.bold,
      color: Colors.blueAccent,
    );
  }
}
