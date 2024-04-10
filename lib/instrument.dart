import 'package:flutter/material.dart';
import 'package:homework2/detailPage.dart';

// class Instrument {
//   final String name;
//   final String photo;
//   final String type;
//   final String description;
//   const Instrument(
//       {required this.name,
//       required this.photo,
//       required this.type,
//       required this.description});

// }

class Instrument extends StatelessWidget {
  const Instrument(
      {super.key,
      required this.name,
      required this.photo,
      required this.type,
      required this.description});
  final String name;
  final String photo;
  final String type;
  final String description;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailPage(name: name, photo: photo, type: type, description: description)));
        },
        child: Card(
            margin: const EdgeInsets.all(10),
            child: Column(
              children: [
                Text(name),
                Image(
                  image: AssetImage('assets/$photo.jpg'),
                  height: 100,
                  width: 100,
                  fit: BoxFit.fill,
                ),
              ],
            )));
  }
}
