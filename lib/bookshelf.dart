import 'package:flutter/material.dart';
import './home.dart';

class BookShelf extends StatelessWidget {
  final _books = ["精绝古城", "龙岭迷窟", "云南虫谷", "昆仑神宫"];
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.separated(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(8),
      itemCount: _books.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0),
              width: 125,
              height: 150,
              child: Card(
                color: Colors.purple,
                child: InkWell(
                  // splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomePage(_books[index], index)),
                    );
                  },
                  child: Image(
                    height: 150,
                    image: AssetImage("covers/" + index.toString() + ".jpeg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Text(
              "鬼吹灯\n" + _books[index],
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
              ),
            ),
          ],
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    ));
  }
}
