import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class LiquidSwipeView extends StatelessWidget {
  // List of Containers
  final pages = [
    Container(
      color: Colors.amber,
    ),
    Container(
      color: Colors.red,
    ),
  ];

  LiquidSwipeView({super.key});
  @override
  Widget build(BuildContext context) {
    return LiquidSwipe(
      pages: pages,
      fullTransitionValue: 200,
      slideIconWidget: const Icon(Icons.arrow_back_ios),
      enableLoop: true,
      positionSlideIcon: 0.8,
      waveType: WaveType.liquidReveal,
    );
  }
}
