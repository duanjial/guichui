import 'package:flutter/material.dart';
import './directory.dart';

class HomePage extends StatelessWidget {
  final _title;
  final _index;
  HomePage(this._title, this._index);

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
                "鬼吹灯\n" + _title,
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
                    image: AssetImage("covers/" + _index.toString() + ".jpeg"),
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
