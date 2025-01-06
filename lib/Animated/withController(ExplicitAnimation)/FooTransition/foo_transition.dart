import 'package:flutter/material.dart';

class FooTransition extends StatefulWidget {
  const FooTransition({super.key});

  @override
  State<FooTransition> createState() => _FooTransitionState();
}

class _FooTransitionState extends State<FooTransition>
    with TickerProviderStateMixin {
  late AnimationController _greenController;
  late AnimationController _yellowController;
  late Animation<AlignmentGeometry> _greenAnimation;
  late Animation<AlignmentGeometry> _yellowAnimation;
  @override
  void initState() {
    super.initState();
    _greenController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
      reverseDuration: const Duration(seconds: 1),
    );
    _yellowController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
      reverseDuration: const Duration(seconds: 1),
    );
    _greenAnimation = Tween<AlignmentGeometry>(
            begin: Alignment.topCenter, end: Alignment.bottomCenter)
        .animate(_greenController);
    _yellowAnimation = Tween<AlignmentGeometry>(
            begin: Alignment.centerLeft, end: Alignment.centerRight)
        .animate(
      CurvedAnimation(
        parent: _yellowController,
        curve: Curves.easeInOut,
        reverseCurve: Curves.easeInOut,
      ),
    );
    // _greenController.addStatusListener((status) {
    //   if (status == AnimationStatus.completed &&
    //       _yellowController.status == AnimationStatus.dismissed) {
    //     _yellowController.forward();
    //   }
    //   if (status == AnimationStatus.dismissed &&
    //       _yellowController.status == AnimationStatus.completed) {
    //     _yellowController.reverse();
    //   }
    // });
    _greenController.addListener(() {
      // print("_greenController: ${_greenController.value}");
      if (_greenController.value >= 0.5 && _yellowController.value == 0) {
        _yellowController.forward();
      }
      if (_greenController.value <= 0.5 && _yellowController.value == 1) {
        _yellowController.reverse();
      }
    });
    // _greenAnimation.addListener(() {
    //   print("_greenAnimation: ${_greenAnimation.value}");
    // });
  }

  @override
  void dispose() {
    _greenController.dispose();
    _yellowController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Foo Transition'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(children: [
          _stackWidget(),
          _controlButtons(),
          const SizedBox(height: 30),
        ]),
      ),
    );
  }

  Widget _stackWidget() {
    return Expanded(
      child: Stack(
        children: [
          AlignTransition(
            alignment: _greenAnimation,
            child: const CircleAvatar(
              backgroundColor: Colors.green,
            ),
          ),
          AlignTransition(
            alignment: _yellowAnimation,
            child: const CircleAvatar(
              backgroundColor: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }

  Widget _controlButtons() {
    return Wrap(
        spacing: 20,
        runSpacing: 20,
        alignment: WrapAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: () {
              _greenController.forward();
              // _yellowController.forward();
            },
            style: _buttonStyle(),
            child: const Text(
              'Forward',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _greenController.reverse();
              // _yellowController.reverse();
            },
            style: _buttonStyle(),
            child: const Text(
              'Reverse',
              style: TextStyle(color: Colors.white),
            ),
          ),
          // ElevatedButton(
          //   onPressed: () {
          //     _animationController.stop();
          //   },
          //   style: _buttonStyle(),
          //   child: const Text(
          //     'Stop',
          //     style: TextStyle(color: Colors.white),
          //   ),
          // ),
          // ElevatedButton(
          //   onPressed: () {
          //     _animationController.reset();
          //   },
          //   style: _buttonStyle(),
          //   child: const Text(
          //     'Reset',
          //     style: TextStyle(color: Colors.white),
          //   ),
          // ),
          // ElevatedButton(
          //   onPressed: () {
          //     _animationController.repeat();
          //   },
          //   style: _buttonStyle(),
          //   child: const Text(
          //     'Repeat (Reverse = false)',
          //     style: TextStyle(color: Colors.white),
          //   ),
          // ),
          // ElevatedButton(
          //   onPressed: () {
          //     _animationController.repeat(reverse: true);
          //   },
          //   style: _buttonStyle(),
          //   child: const Text(
          //     'Repeat (Reverse = true)',
          //     style: TextStyle(color: Colors.white),
          //   ),
          // ),
        ]);
  }

  ButtonStyle _buttonStyle() {
    return ElevatedButton.styleFrom(
      backgroundColor: Colors.blue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
