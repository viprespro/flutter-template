import 'package:flutter/material.dart';
import 'package:flutter_template/child_widget_with_params.dart';

class ScriptPassChild extends StatefulWidget {
  const ScriptPassChild({Key? key}) : super(key: key);

  @override
  State<ScriptPassChild> createState() => _ScriptPassChildState();
}

class _ScriptPassChildState extends State<ScriptPassChild> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pass params'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(15),
              child: const Text(
                'here will show how to pass params to a child widget.',
                style: TextStyle(color: Colors.red, fontSize: 20),
              ),
            ),
            ChildWidgetWithParams(
              id: '001',
            )
          ],
        ),
      ),
    );
  }
}
