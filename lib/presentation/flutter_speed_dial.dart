import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class SpeedDialDemo extends StatefulWidget {
  const SpeedDialDemo({super.key});

  @override
  State<SpeedDialDemo> createState() => _SpeedDialDemoState();
}

class _SpeedDialDemoState extends State<SpeedDialDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // centerTitle: true,
        title: const Text('Flutter Speed Dial Demo'),
        backgroundColor: Colors.teal.shade100,
      ),
      body: const Center(
        child: Text(
          'PLease tap the FAB button',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        backgroundColor: Colors.teal.shade100,
        foregroundColor: Colors.black,
        overlayColor: Colors.white,
        overlayOpacity: 0.5,
        spacing: 12.0,
        spaceBetweenChildren: 9.0,
        // direction: SpeedDialDirection.up,
        children: [
          SpeedDialChild(
            child: const Icon(Icons.message),
            // label: 'Chat',
            onTap: () => log('Chat'),
          ),
          SpeedDialChild(
            child: const Icon(Icons.call),
            label: 'Call',
            onTap: () => log('Call'),
          ),
          SpeedDialChild(
            child: const Icon(Icons.camera_alt),
            label: 'Camera',
            onTap: () => log('Camera'),
          ),
        ],
      ),
    );
  }
}
