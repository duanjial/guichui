import 'package:flutter/material.dart';
import './home.dart';

class BookShelf extends StatelessWidget {
  final _books = [
    "精绝古城",
    "龙岭迷窟",
    "云南虫谷",
    "昆仑神宫",
    "黄皮子坟",
    "南海归墟",
    "怒晴湘西",
    "巫峡棺山"
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(5),
      itemCount: _books.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 3.0, left: 3.0),
              width: 128,
              height: 190,
              child: Card(
                // color: Colors.purple,
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
                    height: 190,
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
    );
  }
}
