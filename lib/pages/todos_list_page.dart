import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_app/pages/data_input_page.dart';
import 'package:todo_list_app/providers/task_provider.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:lottie/lottie.dart';

class TodosPage extends StatelessWidget {
  static const String id = '/todos-page';
  const TodosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Todos'),
      ),
      body: Consumer<TaskProvider>(
        builder: (context, taskProvider, child) => Column(
          children: [
            Expanded(
              child: (taskProvider.tasks.isEmpty)
                  ? Center(
                      child: LottieBuilder.asset('assets/anims/sad.json'),
                    )
                  : ListView.builder(
                      itemCount: taskProvider.tasks.length,
                      itemBuilder: (context, index) => Dismissible(
                            key: Key(taskProvider.tasks[index].title),
                            onDismissed: (v) {},
                            child: Card(
                                child: ListTile(
                              title: Text(
                                taskProvider.tasks[index].title,
                              ),
                              subtitle: taskProvider.tasks[index].isCompleted
                                  ? 'Compteled'.text.make()
                                  : const Text('Incomplete'),
                            )),
                          )),
            ),
            CupertinoButton(
                color: Colors.teal,
                child: 'Add a New Task'.text.make(),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DataInputPage()));
                })
          ],
        ).p(24),
      ),
    );
  }
}
