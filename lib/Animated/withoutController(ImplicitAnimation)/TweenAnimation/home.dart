import 'package:flutter/material.dart';

import 'tween_animation_example1.dart';

class TweenHome extends StatelessWidget {
  const TweenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tween Home'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const TweenAnimationExample1()));
          },
          child: const Text('Go to Animation'),
        ),
      ),
    );
  }
}
