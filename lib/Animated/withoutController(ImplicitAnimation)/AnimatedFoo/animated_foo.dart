import 'package:flutter/material.dart';

class AnimatedFoo extends StatefulWidget {
  const AnimatedFoo({super.key});

  @override
  State<AnimatedFoo> createState() => _AnimatedFooState();
}

class _AnimatedFooState extends State<AnimatedFoo> {
  double _dimension = 100;
  Color _color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Animated Foo'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(children: [
            const SizedBox(height: 30),
            _containerWidget(),
            const Spacer(),
            _buttonWidget(),
            const SizedBox(height: 30),
          ]),
        ));
  }

  Widget _containerWidget() {
    print(">>Bulid Container");
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      curve: Curves.easeInBack,
      height: _dimension,
      width: _dimension,
      decoration: BoxDecoration(
        color: _color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: _getColumnWidget(),
    );
  }

  Widget _getColumnWidget() {
    print(">>>>Bulid Column");
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _getTextWidget('Bulider'),
        _getTextWidget('Vs'),
        _getTextWidget('Child'),
      ],
    );
  }

  Widget _getTextWidget(String text) {
    print(r">>>>>>Bulid \" " $text" r"\ Text");
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    );
  }

  Widget _buttonWidget() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
      onPressed: () {
        setState(() {
          _dimension == 100 ? _dimension = 200 : _dimension = 100;
          _color == Colors.blue ? _color = Colors.red : _color = Colors.blue;
        });
      },
      child: const Text(
        'Start Animation',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
