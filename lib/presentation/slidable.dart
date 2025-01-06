import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class SlidableWidget extends StatefulWidget {
  const SlidableWidget({super.key});

  @override
  State<SlidableWidget> createState() => _SlidableWidgetState();
}

class _SlidableWidgetState extends State<SlidableWidget>
    with SingleTickerProviderStateMixin {
  late final controller = SlidableController(this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Slidable(
          // Specify a key if the Slidable is dismissible.
          // key: const ValueKey(0),
          // controller: controller,
          // The start action pane is the one at the left or the top side.
          startActionPane: ActionPane(
            // A motion is a widget used to control how the pane animates.
            motion: const ScrollMotion(),

            // A pane can dismiss the Slidable.
            // dismissible: DismissiblePane(onDismissed: () {
            //   controller.dispose();
            //   print("object");
            // }),

            // All actions are defined in the children parameter.
            children: [
              // A SlidableAction can have an icon and/or a label.
              SlidableAction(
                onPressed: (context) {
                  print("Delete");
                },
                backgroundColor: const Color(0xFFFE4A49),
                foregroundColor: Colors.white,
                icon: Icons.delete,
                label: 'Delete',
              ),
              SlidableAction(
                onPressed: (context) {
                  print("Share");
                },
                backgroundColor: const Color(0xFF21B7CA),
                foregroundColor: Colors.white,
                icon: Icons.share,
                label: 'Share',
              ),
            ],
          ),

          // The end action pane is the one at the right or the bottom side.
          // endActionPane: ActionPane(
          //   motion: const ScrollMotion(),
          //   children: [
          //     SlidableAction(
          //       // An action can be bigger than the others.
          //       flex: 2,
          //       onPressed: (context) {},
          //       backgroundColor: const Color(0xFF7BC043),
          //       foregroundColor: Colors.white,
          //       icon: Icons.archive,
          //       label: 'Archive',
          //     ),
          //     SlidableAction(
          //       onPressed: (context) {},
          //       backgroundColor: const Color(0xFF0392CF),
          //       foregroundColor: Colors.white,
          //       icon: Icons.save,
          //       label: 'Save',
          //     ),
          //   ],
          // ),

          // The child of the Slidable is what the user sees when the
          // component is not dragged.
          child: const ListTile(
              title: Text(
            'Slide me to start actions',
            // textAlign: TextAlign.right,
          )),
        ),
      ),
    );
  }
}
