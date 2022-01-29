import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChildWidgetWithParams extends StatefulWidget {
  ChildWidgetWithParams({Key? key, required this.id}) : super(key: key);

  String id = '';

  @override
  State<ChildWidgetWithParams> createState() => _ChildWidgetWithParamsState();
}

class _ChildWidgetWithParamsState extends State<ChildWidgetWithParams> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('child initState is called.');
    print('传递给子widget的参数id为:${widget.id}');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        color: Colors.red,
        child: Column(
          children: [
            const Text(
              'this is a child widget with params.',
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 5,
            ),
            Text('id为${widget.id}',
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22)),
          ],
        ));
  }
}
