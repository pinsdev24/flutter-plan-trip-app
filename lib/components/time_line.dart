import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class CustomTimeLine extends StatelessWidget {
  const CustomTimeLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Timeline.tileBuilder(
      builder: TimelineTileBuilder.fromStyle(
        contentsAlign: ContentsAlign.alternating,
        contentsBuilder: (context, index) => Text("Hello $index"),
        itemCount: 10
      )
    );
  }
}
