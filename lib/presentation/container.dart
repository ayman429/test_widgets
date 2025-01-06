import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          // color: Colors.amber,
          width: 80,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
            border: Border.all(
                color: Colors.grey, width: 2, style: BorderStyle.solid),
            // boxShadow: const <BoxShadow>[
            //   BoxShadow(
            //     color: Color(0xfffbf2ef),
            //     blurRadius: 10,
            //     spreadRadius: 5,
            //     offset: Offset(2, 2),
            //   ),
            // ],
          ),
          child: const Center(child: Text("data")),
        ),
      ),
    );
  }
}
