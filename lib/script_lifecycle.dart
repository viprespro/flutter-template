import 'package:flutter/material.dart';
import 'package:flutter_template/child_widget.dart';
import 'package:flutter_template/temp_for_test.dart';

class ScriptLifecycle extends StatefulWidget {
  const ScriptLifecycle({Key? key}) : super(key: key);

  @override
  State<ScriptLifecycle> createState() => _ScriptLifecycleState();
}

class _ScriptLifecycleState extends State<ScriptLifecycle> {
  bool _isTrue = false;

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
  void didUpdateWidget(covariant ScriptLifecycle oldWidget) {
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
          title: const Text('Lifecycle'),
        ),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(15),
              child: const Text(
                'Here will show how the widget lifecycle works.',
                style: TextStyle(color: Colors.red, fontSize: 20),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TempForTest()));
                },
                child: const Text('to next widget')),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isTrue = !_isTrue;
                  });
                },
                child: const Text('change state')),
            Text(_isTrue.toString()),
            const SizedBox(
              height: 20,
            ),
            const ChildWidget(),
          ],
        ));
  }
}
