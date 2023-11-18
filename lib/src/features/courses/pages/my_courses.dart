import 'package:flutter/material.dart';

import '../../../core/widgets/course_card.dart';

class MyCourses extends StatelessWidget {
  const MyCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("My Courses"),
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(20.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  <Widget>[
                    CourseCard(
                        title: "watched Course",
                        description: "software engineering course"),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
