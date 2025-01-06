import 'package:flutter/material.dart';

class Reorderable extends StatefulWidget {
  const Reorderable({super.key});

  @override
  State<Reorderable> createState() => _ReorderableState();
}

class _ReorderableState extends State<Reorderable> {
  List myList = [
    {"leading": "A", "title": "Ayamn"},
    {"leading": "B", "title": "Bakar"},
    {"leading": "C", "title": "Cakalang"},
    {"leading": "D", "title": "Daging"},
    {"leading": "E", "title": "Es Krim"},
    {"leading": "F", "title": "Fried Chicken"},
    {"leading": "G", "title": "Gorengan"},
    {"leading": "H", "title": "Hamburger"},
    {"leading": "I", "title": "Ice Cream"},
    {"leading": "J", "title": "Jus"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ReorderableListView(
      children: [
        for (final item in myList)
          Container(
            margin: const EdgeInsets.all(3),
            key: ValueKey(item),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
              color: Colors.grey[300],
              // border: Border.all(color: Colors.black),
            ),
            height: 50,
            width: double.infinity,
            child: ListTile(
              key: ValueKey(item),
              title: Text(item["title"]),
              leading: Text(item["leading"]),
            ),
          ),
      ],
      onReorder: (oldIndex, newIndex) {
        print('oldIndex: $oldIndex, newIndex: $newIndex');
        setState(() {
          if (newIndex > oldIndex) {
            newIndex -= 1;
          }
          final item = myList.removeAt(oldIndex);
          myList.insert(newIndex, item);
        });
      },
    ));
  }
}
