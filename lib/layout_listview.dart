import 'package:flutter/material.dart';

List<Widget> list = [
  ListTile(
    title: const Text('CineArts at the Empire',
        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
    subtitle: const Text('85 W Portal Ave'),
    leading: Icon(
      Icons.theaters,
      color: Colors.blue[500],
    ),
  ),
  ListTile(
    title: const Text('My fav sports'),
    subtitle: const Text('this is sub title'),
    leading: Icon(
      Icons.favorite,
      color: Colors.blue[500],
    ),
  )
];

class LayoutListview extends StatelessWidget {
  const LayoutListview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview'),
        ),
        body: Center(
          child: ListView(
            children: list,
          ),
        ));
  }
}
