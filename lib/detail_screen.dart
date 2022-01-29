import 'package:flutter/material.dart';
import 'package:flutter_template/script_pass_params_by_route.dart';

class DetailScreen extends StatelessWidget {
  final Todo todo;
  const DetailScreen({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create our UI
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(todo.description),
      ),
    );
  }
}
