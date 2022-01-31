import 'package:flutter/rendering.dart';

class Task {
  String title;
  bool isCompleted;

  Task({required this.title, required this.isCompleted});

  bool operator ==(Object other) {
    return (other as Task).title == title;
  }
}
