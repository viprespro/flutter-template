import 'package:flutter/material.dart';
import 'package:flutter_template/child_widget_with_stateful.dart';

class TempForTest extends StatefulWidget {
  const TempForTest({Key? key}) : super(key: key);

  @override
  State<TempForTest> createState() => _TempForTestState();
}

class _TempForTestState extends State<TempForTest> {
  bool _state = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('initState fn is called.');
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('didChangeDependencies fn is called.');
  }

  @override
  void didUpdateWidget(covariant TempForTest oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget fn is called.');
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print('deactivate fn is called');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('dispose fn is called');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Temp test'),
        ),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(15),
              child: const Text(
                'This page is just a temp test.',
                style: TextStyle(color: Colors.red, fontSize: 20),
              ),
            ),
            const ChildWidgetWithStateFul(),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _state = !_state;
                  });
                },
                child: const Text('change state')),
            Text(_state.toString()),
          ],
        ));
  }
}
