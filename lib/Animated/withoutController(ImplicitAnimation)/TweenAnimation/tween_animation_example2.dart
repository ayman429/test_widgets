import 'package:flutter/material.dart';

class TweenAnimationExample2 extends StatefulWidget {
  const TweenAnimationExample2({super.key});

  @override
  State<TweenAnimationExample2> createState() => _TweenAnimationExample2State();
}

class _TweenAnimationExample2State extends State<TweenAnimationExample2> {
  double _begin = 100;
  double _end = 100;
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
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: _begin, end: _end),
      duration: const Duration(seconds: 1),
      child: _getColumnWidget(),
      builder: (context, value, child) {
        print("value: $value");
        print(">>Bulid Container");
        return Container(
          height: value,
          width: value,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
          ),
          child: child,
        );
      },
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
        fontSize: 22,
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
          _begin == 100 ? _begin = 200 : _begin = 100;
          _end == 100 ? _end = 200 : _end = 100;
        });
      },
      child: const Text(
        'Start Animation',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
