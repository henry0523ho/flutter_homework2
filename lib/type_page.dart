import 'package:flutter/material.dart';
import 'package:homework2/instrument.dart';

// class TypePageItem {
//   const TypePageItem({required this.typeName, required this.instruments});
//   final String typeName;
//   final List<Instrument> instruments;
// }

class TypePage extends StatelessWidget {
  const TypePage({super.key, required this.typeName,required this.instruments});
  final String typeName;
  final List<Instrument> instruments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(typeName),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(10),
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        children: [for (Instrument instrument in instruments) instrument],
      ),
    );
  }
}