import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import './chapterCard.dart';
import 'dart:async';
import 'dart:convert';

class Directory extends StatefulWidget {
  // final FileStorage storage;

  // Directory({Key key, @required this.storage}) : super(key: key);
  final _index;
  Directory(this._index);
  @override
  _DirectoryState createState() => _DirectoryState(_index);
}

class _DirectoryState extends State<Directory> {
  List<String> _dirs = new List<String>();
  final _index;
  _DirectoryState(this._index);
  Future<String> loadAsset() async {
    return await rootBundle
        .loadString("directories/" + _index.toString() + ".txt");
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
