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
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final _description =
      "《鬼吹灯》是2006年由安徽文艺出版社出版的图书，作者是天下霸唱。主要内容是盗墓寻宝，是一部极为经典的悬疑盗墓小说，这部小说也迅速成为了图书销售排行榜的榜首。";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: <Widget>[
            AppBar(
              backgroundColor: Colors.purple,
              title: Center(
                  child: Text(
                "鬼吹灯",
                textAlign: TextAlign.center,
              )),
            ),
            Container(
              margin: const EdgeInsets.all(5.0),
              width: double.infinity,
              height: 40,
              child: Card(
                color: Colors.lightGreen,
                child: Center(
                  child: Text(
                    "~~~~~~ Newly Added ~~~~~~",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            BookShelf(),
            Text(
              "简介",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: RichText(
                text: TextSpan(
                  text: _description,
                  style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.normal,
                    fontSize: 25,
                    letterSpacing: 2,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
