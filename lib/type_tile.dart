import 'package:homework2/instrument.dart';
import 'package:flutter/material.dart';
import 'package:homework2/type_page.dart';

// class TypeTileItem {
//   const TypeTileItem(
//       {required this.title, required this.photo, required this.instruments});
//   final String title;
//   final String photo;
//   final List<Instrument> instruments;
// }

class TypeTile extends StatelessWidget {
  const TypeTile(
      {super.key,
      required this.title,
      required this.photo,
      required this.instruments});
  // final TypeTileItem item;
  final String title;
  final String photo;
  final List<Instrument> instruments;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    TypePage(typeName: title, instruments: instruments)));
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black26, width: 2),
        ),
        child: Row(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: AssetImage('assets/$photo.jpg'),
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
