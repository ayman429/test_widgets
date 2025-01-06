// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import '../newScreen.dart';
import 'child.dart';

class Example2 extends StatefulWidget {
  const Example2({super.key});

  @override
  // ignore: no_logic_in_create_state
  State<Example2> createState() {
    print('create state2');
    return _Example2State();
  }
}

class _Example2State extends State<Example2> {
  int _counter = 0;

  _Example2State() {
    print('constructor2, mounted: $mounted');
  }

  @override
  void initState() {
    super.initState();
    print('initState2, mounted: $mounted');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies2, mounted: $mounted');
  }

  @override
  void setState(VoidCallback fn) {
    print('setState2');
    super.setState(fn);
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  String text = 'hello!';

  @override
  Widget build(BuildContext context) {
    print('build method2');

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                onPressed: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const NewScreen()),
                ),
                child: const Text('Next Page'),
              ),
            ),
            Child(text: text),
            // const Child(text: 'constant text'), //constant child
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                setState(() => text += 'hello!');
              },
              child: const Text('Update Text (parent)'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  @override
  void didUpdateWidget(covariant Example2 oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget2, mounted: $mounted');
  }

  @override
  void deactivate() {
    super.deactivate();
    print('deactivate2, mounted: $mounted');
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose2, mounted: $mounted');
  }

  @override
  void reassemble() {
    super.reassemble();
    print('reassemble2, mounted: $mounted');
  }
}
