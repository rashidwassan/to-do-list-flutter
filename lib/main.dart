import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_app/pages/todos_list_page.dart';
import 'package:todo_list_app/providers/task_provider.dart';
import 'pages/data_input_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskProvider(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: const TodosPage(),
        // initialRoute: TodosPage.id,
        // routes: {
        //   DataInputPage.id: (context) => const DataInputPage(),
        //   TodosPage.id: (context) => const TodosPage(),
        // },
      ),
    );
  }
}
