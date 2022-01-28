import 'package:flutter/material.dart';
import 'package:flutter_template/layout_card.dart';
import 'package:flutter_template/layout_container.dart';
import 'package:flutter_template/layout_gridview.dart';
import 'package:flutter_template/layout_listview.dart';
import 'package:flutter_template/layout_stack.dart';

class Layout extends StatelessWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Layout'),
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              child: const Text(
                'Flutter拥有丰富的布局widget，但这里有一些最常用的布局widget。',
                textAlign: TextAlign.left,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 18,
                  // decoration: TextDecoration.lineThrough // 设置删除线
                ),
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: Column(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LayoutStack()));
                      },
                      child: const Text('Stack')),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LayoutCard()));
                      },
                      child: const Text('Card')),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LayoutContainer()));
                      },
                      child: const Text('Container')),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LayoutGridview()));
                      },
                      child: const Text('Gridview')),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LayoutListview()));
                      },
                      child: const Text('ListView')),
                ],
              ),
            )
          ],
        ));
  }
}
