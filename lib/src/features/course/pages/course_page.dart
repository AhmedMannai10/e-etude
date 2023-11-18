import 'package:flutter/material.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const FixedExtentScrollPhysics(),
      slivers: [
        SliverAppBar(
          stretch: true,
          stretchTriggerOffset: 300.0,
          expandedHeight: 200.0,
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              decoration: const BoxDecoration(
                  color: Color(0xff1a1b1f),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: Image.asset(
                "assets/images/math.png",
                fit: BoxFit.fill,
              ),
            ),
          ),
        )
      ],
    );
  }
}
