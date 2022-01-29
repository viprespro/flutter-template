import 'package:flutter/material.dart';

class ChildWidgetWithStateFul extends StatefulWidget {
  const ChildWidgetWithStateFul({Key? key}) : super(key: key);

  @override
  State<ChildWidgetWithStateFul> createState() =>
      _ChildWidgetWithStateFulState();
}

class _ChildWidgetWithStateFulState extends State<ChildWidgetWithStateFul> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('child initState is called.');
  }

  @override
  void didUpdateWidget(covariant ChildWidgetWithStateFul oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('child didUpdateWidget is called');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: const Text(
        'this is a child widget with stateful.',
        style: TextStyle(color: Colors.white),
      ),
      color: Colors.red,
    );
  }
}
