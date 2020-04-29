import 'package:flutter/material.dart';
import './chapter.dart';

class ChapterCard extends StatelessWidget {
  final title;
  ChapterCard(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: Card(
        color: Colors.purple,
        child: InkWell(
          // splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            print('$title tapped.');
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Chapter(title)),
            );
          },
          child: Center(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
