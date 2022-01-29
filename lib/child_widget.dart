import 'package:flutter/material.dart';

class ChildWidget extends StatelessWidget {
  const ChildWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: const Text(
        'this is a child widget with stateless.',
        style: TextStyle(color: Colors.white),
      ),
      color: Colors.red,
    );
  }
}
