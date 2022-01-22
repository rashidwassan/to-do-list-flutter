import 'package:flutter/material.dart';
import 'package:todo_list_app/pages/todos_list_page.dart';
import './pages/my_homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      //home: const DataInputPage(), this is the property we normally use as a begginer
      initialRoute: TodosPage.id,
      routes: {
        DataInputPage.id: (context) => const DataInputPage(),
        TodosPage.id: (context) => const TodosPage(),
      },
    );
  }
}
