import 'package:elearning/src/core/widgets/video_player_screen.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> lectures = <String>["l1", "l2", "l3", "l4", "l5", "l6"];
    // lectures shoud contains -progress, -length, -title, description(optional), done..;
    return CustomScrollView(
      physics: const FixedExtentScrollPhysics(),
      slivers: [
        SliverAppBar(
          stretch: true,
          backgroundColor: Colors.white54,
          pinned: true,
          floating: true,
          stretchTriggerOffset: 300.0,
          expandedHeight: 300.0,
          flexibleSpace: FlexibleSpaceBar(
            title: const Text(
              "Math // lecture title",
              style: TextStyle(color: Colors.white60),
            ),
            background: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: const VideoPlayerScreen(
                videoURL: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ'
              ), 
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate((BuildContext context, index) {
          return Container(
            height: 200,
            child: Center(
              child: Text(
                'lecture: ${lectures[index]}',
                style: const TextStyle(color: Colors.white),
              ),
            ),
          );
        }, childCount: lectures.length)),
      ],
    );
  }
}
