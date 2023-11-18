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
              child: Center(
                child: Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 12.0, left: 8.0, bottom: 8.0, right: 8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Categories",
                              style: TextStyle(color: Colors.white70),
                            ),
                            TextButton(
                                onPressed: () => print("category ui"),
                                child: Text("See All"))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
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
          items: <BottomNavigationBarItem>[
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
