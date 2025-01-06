import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _value = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slider Example"),
      ),
      body: Column(
        children: [
          Slider(
            value: _value,
            onChanged: (value) {
              setState(() {
                _value = value;
              });
            },
            min: 0,
            max: 100,
            divisions: 10,
            label: _value.round().toString(),
          ),
          Text('Value: ${_value.round()}'),
        ],
      ),
    );
  }
}
