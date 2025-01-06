import 'package:flutter/material.dart';

import 'example1/example1.dart';
import 'example2/example2.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Example 1'),
              Tab(text: 'Example 2'),
              // Tab(text: 'Example 3'),
            ],
          ),
          title: const Text('Lifecycle of a Stateful Widget'),
          centerTitle: true,
        ),
        body: const TabBarView(
          children: [Example1(), Example2()], //, Example3()
        ),
      ),
    );
  }
}
