import 'package:flutter/material.dart';

List<Widget> _buildGridTileList(int count) {
  return List.generate(
      count,
      (int index) => Container(
            color: Colors.green,
            child: Center(
              child: Text(
                '${index + 1}',
                style: const TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
          ));
}

Widget buildGrid() {
  return GridView.extent(
    maxCrossAxisExtent: 150,
    padding: const EdgeInsets.all(4.0),
    mainAxisSpacing: 4.0,
    crossAxisSpacing: 4.0,
    children: _buildGridTileList(30),
  );
}

class LayoutGridview extends StatelessWidget {
  const LayoutGridview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gridview'),
      ),
      body: Center(
        child: buildGrid(),
      ),
    );
  }
}
