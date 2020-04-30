import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import './chapterCard.dart';
import 'dart:async';
import 'dart:convert';

class Directory extends StatefulWidget {
  // final FileStorage storage;

  // Directory({Key key, @required this.storage}) : super(key: key);

  @override
  _DirectoryState createState() => _DirectoryState();
}

class _DirectoryState extends State<Directory> {
  List<String> _dirs = new List<String>();

  Future<String> loadAsset() async {
    return await rootBundle.loadString('directories/first.txt');
  }

  @override
  void initState() {
    super.initState();
    print("Start reading");
    if (_dirs.isEmpty) {
      loadAsset().then((String contents) {
        LineSplitter ls = new LineSplitter();
        setState(() {
          _dirs = ls.convert(contents);
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: _dirs.length,
        itemBuilder: (BuildContext context, int index) {
          return ChapterCard(_dirs[index], index);
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
