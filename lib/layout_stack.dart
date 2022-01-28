import 'package:flutter/material.dart';

class LayoutStack extends StatelessWidget {
  const LayoutStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var stack = Stack(
      alignment: const Alignment(0.6, 0.6), // 定义子元素的位置
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage('images/avatar.png'),
          radius: 100,
        ),
        Container(
          decoration: const BoxDecoration(
            color: Colors.red,
          ),
          child: const Text(
            'Alice',
            style: TextStyle(color: Colors.white),
          ),
        ),
        const Positioned(
          child: Icon(Icons.ac_unit_sharp),
          left: 0.6,
          bottom: 0,
        )
      ],
    );

    return Scaffold(
        appBar: AppBar(
          title: const Text('Stack'),
        ),
        body: Center(
          child: stack,
        ));
  }
}
