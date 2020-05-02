import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async';

class Chapter extends StatefulWidget {
  final chapterTitle;
  final index;
  final bookIndex;
  Chapter(this.chapterTitle, this.bookIndex, this.index);
  _ChapterState createState() => _ChapterState(chapterTitle,
      'chapters/' + bookIndex.toString() + "/" + index.toString() + '.txt');
}

class _ChapterState extends State<Chapter> {
  final chapterTitle;
  var path;
  static var currentPage = 0;
  String _contents;

  _ChapterState(this.chapterTitle, this.path);

  PageController _controller = PageController(
    initialPage: currentPage,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onPageViewChange(int page) {
    setState(() {
      currentPage = page;
    });
    print("Current page: " + page.toString());
  }

  Future<String> loadAsset() async {
    return await rootBundle.loadString(path);
  }

  @override
  void initState() {
    super.initState();
    print("Start loading ... ");
    if (_contents == null) {
      loadAsset().then((String contents) {
        setState(() {
          _contents = contents;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.brown,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.brown[400],
          title: Text(chapterTitle),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: RichText(
              textAlign: TextAlign.start,
              text: TextSpan(
                text: _contents,
                style: TextStyle(
                  color: Colors.white70,
                  fontStyle: FontStyle.normal,
                  fontSize: 23,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
