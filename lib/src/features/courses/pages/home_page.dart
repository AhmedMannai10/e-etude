import 'package:flutter/material.dart';

import '../../../core/widgets/course_card.dart';
import '../../users/user_profile.dart';
import '../../courses/pages/my_courses.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> pages = [
    CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: <Widget>[
        SliverAppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white60,
          stretch: true,
          stretchTriggerOffset: 300.0,
          expandedHeight: 200.0,
          flexibleSpace: FlexibleSpaceBar(
            title: const Text('E-Etude'),
            background: Container(
              decoration: const BoxDecoration(
                  color: Color(0xff1a1b1f),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: const Text(""),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(childCount: 10,
              (BuildContext context, int index) {
            return const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Center(
                child: CourseCard(
                    title: "Science 4th grade",
                    description: "Learning the anotomy of the human body"),
              ),
            );
          }),
        ),
      ],
    ),
    MyCourses(),
    UserProfile(),
  ];

  int currentPageIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      currentPageIndex = index;
    });
    print('Selected: ${currentPageIndex} CurrentIndex: ${index}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.purple,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book_outlined),
              label: 'Courses',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
        body: pages[currentPageIndex]);
  }
}
