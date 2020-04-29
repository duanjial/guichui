import 'package:flutter/material.dart';
import './chapterCard.dart';

class Directory extends StatefulWidget {
  @override
  _DirectoryState createState() => _DirectoryState();
}

class _DirectoryState extends State<Directory> {
  final _directory = ['引子', '第一章 白纸人和鼠友', '第二章 《十六字阴阳风水秘术》'];

  final _pageController = PageController(initialPage: 0);

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        ChapterCard(_directory[0]),
        ChapterCard(_directory[1]),
        ChapterCard(_directory[2]),
      ],
    );
  }
}
