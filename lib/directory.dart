import 'package:flutter/material.dart';
import './chapterCard.dart';

class Directory extends StatelessWidget {
  final _directory = [
    '引子',
    '第一章 白纸人和鼠友',
    '第二章 《十六字阴阳风水秘术》',
    '第三章 大山里的古墓',
    '第三章 大山里的古墓',
    '第三章 大山里的古墓',
    '第三章 大山里的古墓',
    '第三章 大山里的古墓',
    '第三章 大山里的古墓',
    '第三章 大山里的古墓',
    '第三章 大山里的古墓',
    '第三章 大山里的古墓',
    '第三章 大山里的古墓',
    '第三章 大山里的古墓',
    '第三章 大山里的古墓',
    '第三章 大山里的古墓',
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: _directory.length,
        itemBuilder: (BuildContext context, int index) {
          return ChapterCard(_directory[index]);
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
