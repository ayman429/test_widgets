import 'package:flutter/material.dart';

class PopupMenuExample extends StatefulWidget {
  const PopupMenuExample({super.key});

  @override
  _PopupMenuExampleState createState() => _PopupMenuExampleState();
}

class _PopupMenuExampleState extends State<PopupMenuExample> {
  final GlobalKey _menuKey = GlobalKey();

  void _openPopupMenu(bool x) {
    print(x);
    // final RenderBox renderBox =
    //     _menuKey.currentContext!.findRenderObject() as RenderBox;
    // final Offset offset = renderBox.localToGlobal(Offset.zero);
    if (x) {
      showMenu(
        context: context,
        position: RelativeRect.fromDirectional(
            textDirection: TextDirection.ltr,
            start: 0,
            top: 100,
            end: 0,
            bottom: 0),
        // position: RelativeRect.fromLTRB(
        //   offset.dx,
        //   offset.dy + renderBox.size.height,
        //   offset.dx + renderBox.size.width,
        //   0,
        // ),
        items: [
          const PopupMenuItem(value: 1, child: Text('Option 1')),
          const PopupMenuItem(value: 2, child: Text('Option 2')),
          const PopupMenuItem(value: 3, child: Text('Option 3')),
        ],
      );
      // .then((value) {
      //   if (value != null) {
      //     // Handle menu selection
      //     print('Selected: $value');
      //   }
      // });
    } else {
      // Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PopupMenuButton Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ConstrainedBox(
              constraints: BoxConstraints.tight(const Size(300.0, 200.0)),
              child: ColoredBox(
                color: Colors.lightBlueAccent,
                child: MouseRegion(
                  // key: _menuKey,
                  // opaque: false,
                  onEnter: (event) {
                    //when a mouse pointer enters the region.
                    print("enter");
                    // return _openPopupMenu(true);
                    // Navigator.of(context).pop();
                    _openPopupMenu(false);
                  },
                  onExit: (event) {
                    print("exit $event");
                    // _openPopupMenu(false);
                    return _openPopupMenu(true);

                    // Navigator.of(context).pop();
                  },
                  child: const Text("data"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//********************************************************** */
class PopupMenu extends StatelessWidget {
  const PopupMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("PopupMenu"),
            MouseRegion(
              child: const Text(" click"),
              onEnter: (event) {
                print("object");
              },
            ),
            PopupMenuButton(
              offset: const Offset(100, 50),
              // child: const Icon(Icons.arrow_back_ios_new),
              onSelected: (value) {
                switch (value) {
                  case 1:
                    print("Hello");
                  case 2:
                    print("About");
                  case 3:
                    print("Contact");
                    break;
                  default:
                    print("No selected");
                }
              },
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(
                    value: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Hello"),
                      ],
                    ),
                  ),
                  const PopupMenuItem(
                    value: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("About"), Soon()],
                    ),
                  ),
                  const PopupMenuItem(
                    value: 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Contact Contact"), Soon()],
                    ),
                  ),
                ];
              },
            )
          ],
        ),
        centerTitle: true,
      ),
    );
  }
}

class Soon extends StatelessWidget {
  const Soon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Color(0xff797979),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Text("soon"),
      ),
    );
  }
}
