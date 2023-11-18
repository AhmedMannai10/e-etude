import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CourseCard extends StatefulWidget {
  final String title;
  final String description;
  final String thumbnailUrl;
  const CourseCard({
    super.key,
    required this.title,
    required this.description,
    this.thumbnailUrl = "",
  });

  @override
  State<CourseCard> createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 4,
      shape: const RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.black87,
        ),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: SizedBox(
        width: 350,
        height: 200,
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  height: 200,
                  color: Colors.blue,
                  child: Image.asset(
                    widget.thumbnailUrl.isEmpty
                        ? "assets/images/science.png"
                        : widget.thumbnailUrl,
                    fit: BoxFit.fitHeight,
                  ),
                )),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(flex: 1, child: Text(widget.title)),
                    Expanded(flex: 2, child: Text(widget.description)),
                    Expanded(
                        flex: 1,
                        child: ElevatedButton(
                            onPressed: () => {context.go("/coursepage")},
                            child: const Text("Watch Now"))),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
