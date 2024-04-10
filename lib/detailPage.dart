import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage(
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
    return DefaultTabController(
        length: 2,
        initialIndex: 1,
        child: Scaffold(
            body: Scaffold(
              appBar: AppBar(
                title: Text(name),
                bottom: const TabBar(
                  tabs: <Widget>[
                    Tab(
                      child: Text("照片"),
                    ),
                    Tab(
                      child: Text("簡介"),
                    )
                  ],
                ),
              ),
              body: TabBarView(
                children: <Widget>[
                  Center(
                    child: Image(image: AssetImage('assets/$photo.jpg')),
                  ),
                  Center(
                    child: Text(description),
                  ),
                ],
              ),
            )));
  }
}
