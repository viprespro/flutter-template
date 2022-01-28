import 'package:flutter/material.dart';
import 'package:flutter_template/script_request.dart';

class Script extends StatelessWidget {
  const Script({Key? key}) : super(key: key);

  Widget getElevatedButton(ctx, target, title) {
    return ElevatedButton(
        onPressed: () {
          if (target != null) {
            Navigator.push(ctx, MaterialPageRoute(builder: (ctx) => target));
          }
        },
        child: Text('$title'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Script'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            child: const Text(
              'Here will show something about flutter script needs.',
              textAlign: TextAlign.left,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.red,
                fontSize: 18,
                // decoration: TextDecoration.lineThrough // 设置删除线
              ),
            ),
          ),
          const SizedBox(height: 30),
          getElevatedButton(context, null, '封装公共方法'),
          getElevatedButton(context, const ScriptRequest(), '发起一次request请求')
        ],
      ),
    );
  }
}
