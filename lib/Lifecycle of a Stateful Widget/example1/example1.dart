import 'package:flutter/material.dart';

import '../newScreen.dart';

class Example1 extends StatefulWidget {
  const Example1({super.key});

  @override
  State<Example1> createState() {
    print('create state 1');
    return _Example1State();
  }
}

class _Example1State extends State<Example1> {
  int _counter = 0;

  _Example1State() {
    print('constructor1, mounted: $mounted');
  }

  @override
  void initState() {
    super.initState();
    print('initState1, mounted: $mounted');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies, mounted: $mounted');
  }

  @override
  void setState(VoidCallback fn) {
    print('setState1');
    super.setState(fn);
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('build method1');

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have pushed the button this many times:'),

            // counter text
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            // navigation button
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                onPressed: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const NewScreen()),
                ),
                child: const Text('Next Page'),
              ),
            ),
          ],
        ),
      ),

      // increment floating action button
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  @override
  void didUpdateWidget(covariant Example1 oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget1, mounted: $mounted');
  }

  @override
  void deactivate() {
    super.deactivate();
    print('deactivate1, mounted: $mounted');
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose1, mounted: $mounted');
  }

  @override
  void reassemble() {
    super.reassemble();
    print('reassemble1, mounted: $mounted');
  }
}
