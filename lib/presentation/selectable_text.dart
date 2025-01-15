import 'package:flutter/material.dart';

class SelectableTextWidget extends StatelessWidget {
  const SelectableTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selectable Text'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: SelectableText.rich(
          TextSpan(
            text: 'Hello!',
            style: TextStyle(
              fontSize: 30,
              color: Colors.blue,
            ),
            children: <TextSpan>[
              TextSpan(
                text: ' How are you?',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          // onSelectionChanged: (selection, cause) {
          //   // print('Selection: $selection, Cause: $cause');
          // },
          // onTap: () {
          //   print('Selectable Text tapped');
          // },

          // contextMenuBuilder: (context, editableTextState) {
          //   return AdaptiveTextSelectionToolbar(
          //       anchors: editableTextState.contextMenuAnchors,
          //       children: [
          //         InkWell(
          //           onTap: () {},
          //           child: const SizedBox(
          //             width: 200.0,
          //             child: Text('Note'),
          //           ),
          //         )
          //       ]);
          // },
          style: TextStyle(
            fontSize: 30,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
