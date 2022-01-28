import 'package:flutter/material.dart';

class LayoutContainer extends StatelessWidget {
  const LayoutContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container'),
      ),
      body: const MyContainer(),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity, // 设置100%
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.all(10),
      // color: Colors.amber, // 与decoration互斥
      decoration: BoxDecoration(
        color: Colors.yellow,
        border: Border.all(color: Colors.redAccent, width: 2.0),
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      ),
      child: const Text(
        'this is child text content in a container',
        style: TextStyle(color: Colors.red, fontSize: 20),
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
