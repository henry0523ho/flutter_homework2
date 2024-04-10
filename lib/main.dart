import 'package:flutter/material.dart';
import 'package:homework2/type_tile.dart';
import 'package:homework2/instrument.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[500],
        title: const Text('管弦樂介紹'),
        leading: const Icon(Icons.menu),
      ),
      body: const TypeList(),
    );
  }
}

class TypeList extends StatelessWidget {
  const TypeList({super.key});
  static const List<List<String>> items = [
    ["木管樂器", "flute"],
    ["銅管樂器", "trumpet"],
    ["敲擊樂器", "timpani"],
    ["弦樂器", "violin"],
  ];
  static const List<List<Instrument>> data = [
    [
      Instrument(
          name: "長笛",
          photo: "flute",
          type: "木管樂器",
          description:
              "長笛是現代管弦樂和室內樂中主要的高音旋律樂器，外型是一根開有數個音孔的圓柱型長管。 早期的長笛是烏木或椰木製，現代多使用金屬的材質，比如普通的鎳銀合金到專業型的銀合金，金（9K、14K、18K、24K）以及白金等，也有表演者使用特殊的玻璃長笛。"),
      Instrument(
          name: "豎笛",
          photo: "clarinet",
          type: "木管樂器",
          description:
              "單簧管，又稱豎笛、黑管，是一種木管樂器，從夏盧摩笛（法語：Chalumeau，一種古代的單簧低音樂器）發展而來的，形成於17世紀末，訛傳是由德國的長笛製造家丹納（Johann Denner，1655年—1707年）所發明，但實際上根本不是那麼一回事。"),
      Instrument(
          name: "雙簧管",
          photo: "oboe",
          type: "木管樂器",
          description:
              "「雙簧」是以兩塊簧片縛在一起，並透過簧片振動而發聲。 它的音質獨特，在交響樂團中，經常在其他樂器的伴奏中以獨奏的形式出現。 雙簧管是由蕭姆管（Shawm）發展而成的樂器。 現今交響樂團演出前，會以雙簧管奏出的A(442Hz或440Hz)音來作為其他樂器調音的基礎。"),
    ],
    [
      Instrument(
          name: "小號",
          photo: "trumpet",
          type: "銅管樂器",
          description:
              "小號（英語：Trumpet），又稱小喇叭，是一種銅管樂器。常用於古典音樂及爵士樂，小號中的高音小號是銅管樂器家族中音域最高的樂器之一，而低音小號的音高比常見的降B調小號要低一個八度。"),
      Instrument(
          name: "長號",
          photo: "trombone",
          type: "銅管樂器",
          description:
              "長號（英語：Trombone，德語：Posaune），亦稱伸縮喇叭、伸縮號，是一種銅管樂器。一如所有銅管樂器，長號透過吹奏者以雙唇振動空氣來發聲；而與其他使用按鍵的銅管樂器的不同之處在於，長號透過吹奏者改變滑管（Slide）的長度來改變音高。最為常見的長號種類為次中音長號（tenor trombone）。"),
      Instrument(
          name: "上低音號",
          photo: "euphonium",
          type: "銅管樂器",
          description:
              "上低音號一般是指粗管上低音號（Euphonium）、華格納低音號（Wagner tuba）、和細管上低音號（Baritone），廣義上亦包括按鍵長號、蛇號、低音小號和低音薩克號。 在台灣常習慣稱為「巴里東」（Baritone），但實際上樂團編制通常只有粗管上低音號（Euphonium）。"),
      Instrument(
          name: "低音號",
          photo: "tuba",
          type: "銅管樂器",
          description:
              "低音號（英語：Tuba）（亦稱低音大喇叭或土巴號，在大陸地區多稱之為大號），是一種低音銅管樂器。在管弦樂隊、管樂隊中經常使用，是音域最低，體積最大的銅管樂器。"),
    ],
    [
      Instrument(
          name: "定音鼓",
          photo: "timpani",
          type: "敲擊樂器",
          description:
              "定音鼓（義大利語：Timpani，西班牙語：Tímpano，英語：Timpani或Kettledrum，德語：Pauken，法語：Timbales）是一種膜鳴樂器，由古代戰爭時的戰鼓所演變出來的變種樂器。 在巴洛克時代後期開始在樂隊中使用，古典時期起已成為了常規化的樂器，亦成為了整個交響樂團中的一個重要樂器。"),
    ],
    [
      Instrument(
          name: "小提琴",
          photo: "violin",
          type: "弦樂器",
          description:
              "小提琴可以和交響樂團一起演奏，小提琴在台前（最靠近指揮的也叫做首席小提琴），後面是交響樂團為小提琴伴奏，這種表演形式演奏的曲目稱之為小提琴協奏曲；小提琴也可以與鋼琴一起演奏，一般小提琴奏鳴曲以這形式演奏；小提琴還可以和中提琴、大提琴一起演奏室內樂，稱之為弦樂三重奏、弦樂四重奏、弦樂五重奏等等。"),
    ]
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return TypeTile(
            title: items[index][0],
            photo: items[index][1],
            instruments: data[index]);
      },
    );
  }
}
