import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class TodosPage extends StatelessWidget {
  static const String id = '/todos-page';
  const TodosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(),
          ),
          CupertinoButton(
              color: Colors.teal,
              child: 'Add a New Task'.text.make(),
              onPressed: () {})
        ],
      ).p(24),
    );
  }
}
