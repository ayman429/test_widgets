import 'package:flutter/material.dart';
import 'package:flutter_randomcolor/flutter_randomcolor.dart';

class PositionedTiles extends StatefulWidget {
  const PositionedTiles({super.key});

  @override
  State<StatefulWidget> createState() => PositionedTilesState();
}

class PositionedTilesState extends State<PositionedTiles> {
  List<Widget> tiles = [
    // StatelessColorfulTile(),
    // StatelessColorfulTile(),
    //-----------------------------
    // const StatefulColorfulTile(),
    // const StatefulColorfulTile(),
    //-----------------------------
    // StatefulColorfulTile(key: UniqueKey()),
    // StatefulColorfulTile(key: UniqueKey()),
    //-----------------------------
    // Padding(
    //   padding: const EdgeInsets.all(8.0),
    //   child: StatefulColorfulTile(key: UniqueKey()),
    // ), // Keys added here
    // Padding(
    //   padding: const EdgeInsets.all(8.0),
    //   child: StatefulColorfulTile(key: UniqueKey()),
    // ),
    //-----------------------------
    Padding(
      key: UniqueKey(),
      padding: const EdgeInsets.all(8.0),
      child: const StatefulColorfulTile(),
    ), // Keys added here
    Padding(
      key: UniqueKey(),
      padding: const EdgeInsets.all(8.0),
      child: const StatefulColorfulTile(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: tiles),
      floatingActionButton: FloatingActionButton(
          onPressed: swapTiles,
          child: const Icon(Icons.sentiment_very_satisfied)),
    );
  }

  swapTiles() {
    setState(() {
      tiles.insert(1, tiles.removeAt(0));
    });
  }
}

// class StatelessColorfulTile extends StatelessWidget {
//   final Color myColor = RandomColor.getColorObject(Options());

//   StatelessColorfulTile({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         color: myColor, child: const Padding(padding: EdgeInsets.all(70.0)));
//   }
// }

class StatefulColorfulTile extends StatefulWidget {
  const StatefulColorfulTile({super.key});

  @override
  ColorfulTileState createState() => ColorfulTileState();
}

class ColorfulTileState extends State<StatefulColorfulTile> {
  late Color myColor;

  @override
  void initState() {
    super.initState();
    myColor = RandomColor.getColorObject(Options());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: myColor,
        child: const Padding(
          padding: EdgeInsets.all(70.0),
        ));
  }
}
