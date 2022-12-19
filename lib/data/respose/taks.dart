import 'package:quran/domain/enities/tasks.dart';
import 'dart:convert';

class TasksResponse extends TasksEnities {
  TasksResponse(
      {required super.title,
      required super.date,
      super.description,
      super.isDone,
      super.isSelected});

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'date': date,
      'description': description,
      'isSelected': isSelected,
      'isDone': isDone,
    };
  }

  factory TasksResponse.fromMap(Map<String, dynamic> map) {
    return TasksResponse(
      title: map['title'] ?? '',
      date: map['date'] ?? '',
      description: map['description'],
      isSelected: map['isSelected'],
      isDone: map['isDone'],
    );
  }

  String toJson() => json.encode(toMap());

  factory TasksResponse.fromJson(String source) =>
      TasksResponse.fromMap(json.decode(source));
}
