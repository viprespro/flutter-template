import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class ScriptRequest extends StatefulWidget {
  const ScriptRequest({Key? key}) : super(key: key);

  @override
  State<ScriptRequest> createState() => _ScriptRequestState();
}

class _ScriptRequestState extends State<ScriptRequest> {
  var username = '';
  var avatarUrl = '';

  void getHttp() async {
    try {
      var response = await Dio().get('https://api.github.com/users/viprespro');
      Map map = json.decode(response.toString());
      setState(() {
        username = map['login'];
        avatarUrl = map['avatar_url'];
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dio request'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              getHttp();
            },
            child: const Text('tap to request'),
          ),
          const Text('这里是返回的数据response:'),
          username != ''
              ? Text(
                  '用户名: $username',
                  style: const TextStyle(color: Colors.red, fontSize: 20),
                )
              : const SizedBox(
                  child: Text(
                    'before fetching data...',
                    style: TextStyle(color: Colors.redAccent, fontSize: 18),
                  ),
                ),
          avatarUrl != ''
              ? SizedBox(
                  width: 200,
                  height: 200,
                  child: Image.network(
                    avatarUrl,
                    fit: BoxFit.cover,
                  ),
                )
              : const Text('')
        ],
      )),
    );
  }
}
