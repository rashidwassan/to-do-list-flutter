import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_app/models/task.dart';
import 'package:todo_list_app/providers/task_provider.dart';
import 'package:velocity_x/velocity_x.dart';

class DataInputPage extends StatelessWidget {
  // creating id for this screen to use it in routes def
  static const String id = '/data-input';
  DataInputPage({Key? key}) : super(key: key);

  addTask(BuildContext context) {
    Task newTask = Task(title: _titleController.text, isCompleted: false);
    Provider.of<TaskProvider>(context, listen: false).addTask(newTask);

//to go back to todos page
    Navigator.of(context).pop();
  }

  final TextEditingController _titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text('Add To-Do'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // with velocityX
            'Adding a new task?'.text.size(20).black.semiBold.makeCentered(),

            24.heightBox,
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 12),
                  border: OutlineInputBorder()),
            ),
            24.heightBox,
            CupertinoButton(
              child: 'Add Task'.text.make(),
              onPressed: () {
                addTask(context);
              },
              color: Theme.of(context).primaryColor,
            )
          ],
        ),
      ),
    );
  }
}
