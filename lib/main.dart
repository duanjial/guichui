import 'package:flutter/material.dart';
import './directory.dart';

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
                "鬼吹灯\n精绝古城",
                textAlign: TextAlign.center,
              )),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  Image(
                    height: 300,
                    image: AssetImage('covers/1.jpeg'),
                    fit: BoxFit.fill,
                  ),
                ],
              ),
              height: 300,
            ),
            Directory(),
          ],
        ));
  }
}
