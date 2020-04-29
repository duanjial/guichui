import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart' show rootBundle;
import './chapterCard.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:io';

class FileStorage {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    print(directory);
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/counter.txt');
  }

  Future<List<String>> readFile() async {
    try {
      final file = await _localFile;

      // Read the file
      List<String> contents = await file.readAsLines();

      return contents;
    } catch (e) {
      // If encountering an error, return 0
      return null;
    }
  }
}

class Directory extends StatefulWidget {
  // final FileStorage storage;

  // Directory({Key key, @required this.storage}) : super(key: key);

  @override
  _DirectoryState createState() => _DirectoryState();
}

class _DirectoryState extends State<Directory> {
  List<String> _dirs;

  Future<String> loadAsset() async {
    return await rootBundle.loadString('directories/first.txt');
  }

  @override
  void initState() {
    super.initState();
    print("Start reading");
    loadAsset().then((String contents) {
      LineSplitter ls = new LineSplitter();
      setState(() {
        _dirs = ls.convert(contents);
      });
    });
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
