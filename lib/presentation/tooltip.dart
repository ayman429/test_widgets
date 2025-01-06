import 'package:flutter/material.dart';

class TooltipWidget extends StatelessWidget {
  const TooltipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tooltip Example"),
      ),
      body: const Center(
        child: Tooltip(
          richMessage: TextSpan(
            text: 'I am a rich tooltip. ',
            style: TextStyle(color: Colors.white),
            children: <InlineSpan>[
              TextSpan(
                text: 'I am another span of this rich tooltip',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          child: Text('Tap this text and hold down to show a tooltip.'),
        ),
      ),
    );
  }
}
