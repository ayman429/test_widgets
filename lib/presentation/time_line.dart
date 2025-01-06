import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class TimeLineWidget extends StatelessWidget {
  const TimeLineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FixedTimeline.tileBuilder(
          theme: TimelineTheme.of(context).copyWith(
              ///////dot position
              indicatorPosition: 0.17,
              nodePosition: 0,
              color: const Color(0xffA5702A),
              connectorTheme:
                  const ConnectorThemeData(color: Color(0xffE0B555))),
          builder: TimelineTileBuilder.connectedFromStyle(
            firstConnectorStyle: ConnectorStyle.transparent,
            lastConnectorStyle: ConnectorStyle.transparent,
            contentsAlign: ContentsAlign.basic,
            connectionDirection: ConnectionDirection.after,
            contentsBuilder: (context, index) => const Padding(
              padding: EdgeInsets.only(
                right: 0,
                left: 12,
              ),
              child: Text("ayman mansour"),
            ),
            connectorStyleBuilder: (context, index) {
              return ConnectorStyle.solidLine;
            },
            indicatorStyleBuilder: (context, index) {
              return IndicatorStyle.outlined;
            },
            itemCount: 5,
            itemExtent: 95.0,
          ),
        ),
      ),
    );
  }
}

class TimeLineTest1 extends StatelessWidget {
  const TimeLineTest1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Timeline.tileBuilder(
      builder: TimelineTileBuilder.fromStyle(
        contentsAlign: ContentsAlign.reverse,
        contentsBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(24.0),
          child: Text('Timeline Event $index'),
        ),
        itemCount: 10,
      ),
    );
  }
}
