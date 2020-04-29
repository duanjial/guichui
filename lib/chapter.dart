import 'package:flutter/material.dart';

class Chapter extends StatefulWidget {
  final chapterTitle;
  Chapter(this.chapterTitle);
  _ChapterState createState() => _ChapterState(chapterTitle);
}

class _ChapterState extends State<Chapter> {
  final chapterTitle;
  static var currentPage = 0;

  _ChapterState(this.chapterTitle);

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

  final String paragraph =
      "盗墓不是游览观光,不是吟诗作对,不是描画绣花,不能那样文雅,那样闲庭信步,含情默默,那样天地君亲师.盗墓是一门技术,一门进行破坏的技术." +
          "古代贵族们建造坟墓的时候,一定是想方设法地防止被盗,故此无所不用其极,在墓中设置种种机关暗器,埋伏,有巨石,流沙,毒箭,毒虫,陷坑等等数不胜数.到了明代,受到西洋奇技淫巧的影响,一些大墓甚至用到了" +
          "西洋的八宝转心机关,尤其是清代的帝陵,堪称集数千年防盗技术于一体的杰作." +
          "大军阀孙殿英想挖开东陵,用里面的财宝充当军饷,发动大批军队,连挖带炸用了五六天才得手,其坚固程度可想而知." +
          "盗墓贼的课题就是千方百计地破解这些机关,进入墓中探宝.不过在现代,比起如何挖开古墓更困难的是寻找古墓," +
          "地面上有封土堆和石碑之类明显建筑的大墓早就被人发掘得差不多了,如果要找那些年深日久藏于地下,又没有任何地上标记的古墓," +
          "那就需要一定的技术和特殊工具了,铁钎,洛阳铲,竹钉,钻地龙,探阴爪,黑折子等工具应运而生.还有一些高手不依赖工具," +
          "有的通过寻找古代文献中的线索寻找古墓,还有极少数的一些人掌握秘术,可以通过解读山川河流的脉象,用看风水的本领找墓穴." +
          "我就是属于最后这一类的.我踏遍了各地,其间经历了很多诡异离奇的事件,若是一件件地表白出来,足以让观者惊心,闻者咋舌,毕竟那些龙形虎藏," +
          "揭天拔地,倒海翻江的举动,都非比寻常.这诸般事迹须从我祖父留下来的一本残书《十六字阴阳风水秘术》讲起,这本残书,下" +
          "半本不知何故被人硬生生地扯了去,只留下这上卷风水秘术篇,书中所述,多半都是解读墓葬的风水格局之类的独门秘术……";

  @override
  Widget build(BuildContext context) {
    return PageView(
      onPageChanged: _onPageViewChange,
      controller: _controller,
      children: [
        Container(
          child: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              centerTitle: true,
              title: Text(chapterTitle),
            ),
            body: Container(
              margin: EdgeInsets.all(15),
              child: SingleChildScrollView(
                  child: RichText(
                text: TextSpan(
                  text: paragraph,
                  style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.normal,
                    fontSize: 25,
                    letterSpacing: 3,
                  ),
                ),
              )),
            ),
          ),
        ),
        Container(
          child: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              title: Text(chapterTitle),
            ),
            body: Container(
              margin: EdgeInsets.all(15),
              child: SingleChildScrollView(
                  child: RichText(
                text: TextSpan(
                  text: "page 2",
                  style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.normal,
                    fontSize: 25,
                    letterSpacing: 3,
                  ),
                ),
              )),
            ),
          ),
        ),
        Container(
          child: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              title: Text(chapterTitle),
            ),
            body: Container(
              margin: EdgeInsets.all(15),
              child: SingleChildScrollView(
                  child: RichText(
                text: TextSpan(
                  text: "page 3",
                  style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.normal,
                    fontSize: 25,
                    letterSpacing: 3,
                  ),
                ),
              )),
            ),
          ),
        ),
      ],
    );
  }
}
