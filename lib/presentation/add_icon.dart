import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddIcon extends StatelessWidget {
  const AddIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.elliptical(5, 5))),
                  minimumSize:
                      const Size(2, 5), // Set the minimum size of the button
                ),
                onPressed: () {},
                child: const Icon(Icons.remove),
              ),
              const Text("5"),
              ElevatedButton(
                style: ElevatedButton.styleFrom(shape: const CircleBorder()),
                onPressed: () {},
                child: const Icon(Icons.add),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.elliptical(5, 5))),
                  minimumSize:
                      const Size(2, 5), // Set the minimum size of the button
                ),
                onPressed: () {},
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.elliptical(5, 5)),
                  ),
                  child: const Icon(Icons.remove),
                ),
              ),
              const Text("5"),
              TextButton(
                onPressed: () {},
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Icon(Icons.add),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
