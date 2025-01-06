import 'package:flutter/material.dart';
import 'package:redacted/redacted.dart';

class RedactWidget extends StatelessWidget {
  const RedactWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                const Expanded(child: HeadphoneWidget()),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: const HeadphoneWidget().redacted(
                    context: context,
                    redact: true,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HeadphoneWidget extends StatelessWidget {
  const HeadphoneWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.blue,
          height: 100,
          width: 100,
          child: const Text("ayman mansour"),
        ),
        const Text("data"),
        const Text("data"),
        Container(
          color: Colors.blue,
          height: 50,
          width: 50,
          child: TextButton(onPressed: () {}, child: const Text("data")),
        ),
        Container(
            color: Colors.white,
            height: 20,
            width: 20,
            child: const Icon(Icons.email))
      ],
    );
  }
}
