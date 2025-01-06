import 'package:flutter/material.dart';

class RadioButtonPage extends StatefulWidget {
  const RadioButtonPage({super.key});

  @override
  _RadioButtonPageState createState() => _RadioButtonPageState();
}

class _RadioButtonPageState extends State<RadioButtonPage> {
  String? _groupValue = '1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Radio Button Example"),
      ),
      body: Column(
        children: [
          RadioButtonWidget(
            title: 'Radio 1',
            value: '1',
            groupValue: _groupValue!,
            onChanged: (value) {
              print(value);
              setState(() {
                _groupValue = value;
              });
            },
          ),
          RadioButtonWidget(
            title: 'Radio 2',
            value: '2',
            groupValue: _groupValue!,
            onChanged: (value) {
              setState(() {
                _groupValue = value;
              });
            },
          ),
          RadioButtonWidget(
            title: 'Radio 3',
            value: '3',
            groupValue: _groupValue!,
            onChanged: (value) {
              setState(() {
                _groupValue = value;
              });
            },
          ),
          Text('Selected Radio Button: $_groupValue'),
        ],
      ),
    );
  }
}

class RadioButtonWidget extends StatelessWidget {
  final String title;
  final String value;
  final String groupValue;
  final void Function(String?)? onChanged;

  const RadioButtonWidget(
      {super.key,
      required this.title,
      required this.value,
      required this.groupValue,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio<String>(
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
        ),
        Text(title),
      ],
    );
  }
}
