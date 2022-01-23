import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class DataInputPage extends StatelessWidget {
  // creating id for this screen to use it in routes def
  static const String id = '/data-input';
  const DataInputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text('Add To-Do'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // with velocityX
          'Adding a new task?'.text.size(20).black.semiBold.makeCentered(),
          24.heightBox,
          const TextField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 12),
                border: OutlineInputBorder()),
          ),
          24.heightBox,
          CupertinoButton(
            child: 'Add Task'.text.make(),
            onPressed: () {},
            color: Theme.of(context).primaryColor,
          )
        ],
      ).p(24),
    );
  }
}
