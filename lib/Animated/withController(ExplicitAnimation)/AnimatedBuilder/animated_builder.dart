import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AnimatedBuilderWidget extends StatefulWidget {
  const AnimatedBuilderWidget({super.key});

  @override
  State<AnimatedBuilderWidget> createState() => _AnimatedBuilderWidgetState();
}

class _AnimatedBuilderWidgetState extends State<AnimatedBuilderWidget>
    with SingleTickerProviderStateMixin {
  late Animation<Color?> _animation;
  late AnimationController _animationController;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _animation = ColorTween(begin: Colors.blueAccent, end: Colors.deepPurple)
        .animate(_animationController);
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Builder'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            _containerWidget(),
            const Spacer(),
            _controlButtons(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _controlButtons() {
    return Wrap(
      spacing: 20,
      children: [
        ElevatedButton(
          onPressed: () {
            _animationController.forward();
          },
          style: _buttonStyle(),
          child: const Text(
            'Forward',
            style: TextStyle(color: Colors.white),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            _animationController.reverse();
          },
          style: _buttonStyle(),
          child: const Text(
            'Reverse',
            style: TextStyle(color: Colors.white),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            _animationController.stop();
          },
          style: _buttonStyle(),
          child: const Text(
            'Stop',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }

  ButtonStyle _buttonStyle() {
    return ElevatedButton.styleFrom(
      backgroundColor: Colors.blue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }

  Widget _containerWidget() {
    return AnimatedBuilder(
      animation: _animationController, //_animation,
      child: _getChildWidget(),
      builder: (context, child) {
        // print("=====================================");
        // print("value: ${_animation.value}");
        // print(">>Bulid Container");
        return Container(
          height: 250,
          width: 250,
          color: _animation.value,
          child: child,
        );
      },
    );
  }

  Widget _getChildWidget() {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      _getTextWidget('Animated'),
      _getTextWidget('Bulider'),
      _getTextWidget('Widget'),
    ]);
  }

  Widget _getTextWidget(String text) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 22,
      ),
    );
  }
}
