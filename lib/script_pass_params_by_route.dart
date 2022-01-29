import 'package:flutter/material.dart';
import 'package:flutter_template/detail_screen.dart';

class Todo {
  final String title;
  final String description;

  Todo(this.title, this.description);
}

// ignore: must_be_immutable
class ScriptPassParamsByRoute extends StatelessWidget {
  ScriptPassParamsByRoute({Key? key}) : super(key: key);

  List<Todo> todos = List.generate(
      20,
      (i) => Todo(
          'Todo $i', 'A description of what needs to be done for Todo $i'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pass params by route'),
        ),
        body: ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(todos[index].title),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailScreen(
                                todo: todos[index],
                              )));
                },
              );
            }));
  }
}
