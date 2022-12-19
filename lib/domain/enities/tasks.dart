import 'package:equatable/equatable.dart';

class TasksEnities extends Equatable {
  final String title;
  final int date;
  String description;
  bool isSelected;
  bool isDone;

  TasksEnities({
    required this.title,
    required this.date,
    this.description = "",
    this.isDone = false,
    this.isSelected = false,
  });

  TasksEnities copyWith({
    String? title,
    int? date,
    String? description,
    bool? isSelected = false,
    bool? isDone = false,
  }) {
    return TasksEnities(
        title: title ?? this.title,
        date: date ?? this.date,
        description: description ?? this.description,
        isDone: isDone ?? this.isDone,
        isSelected: isSelected ?? this.isSelected);
  }

  @override
  List<Object?> get props => [title, date, description, isDone, isSelected];
}
