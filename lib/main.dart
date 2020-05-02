import 'package:flutter/material.dart';
import './home.dart';
import './bookshelf.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final _description = "《鬼吹灯》是2006年由安徽文艺出版社出版的图书，作者是天下霸唱。" +
      "主要内容是盗墓寻宝，是一部极为经典的悬疑盗墓小说，这部小说也迅速成为了图书销售排行榜的榜首。";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown,
        appBar: AppBar(
          backgroundColor: Colors.brown[400],
          centerTitle: true,
          title: Center(
              child: Text(
            "鬼吹灯",
            textAlign: TextAlign.center,
          )),
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                top: 5.0,
                left: 8.0,
                bottom: 10.0,
              ),
              height: 260,
              width: double.infinity,
              child: BookShelf(),
            ),
            Text(
              "简介",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 25,
              ),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                  text: _description,
                  style: TextStyle(
                    color: Colors.white70,
                    fontStyle: FontStyle.normal,
                    fontSize: 23,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
