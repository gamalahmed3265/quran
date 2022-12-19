import 'package:equatable/equatable.dart';
import 'package:quran/domain/enities/tasks.dart';

abstract class TasksEvents extends Equatable {
  @override
  List<Object?> get props => [];
}

class AddTaskEvents extends TasksEvents {
  final TasksEnities task;

  AddTaskEvents({required this.task});

  @override
  List<Object?> get props => [task];
}

class UpdateTaskEvents extends TasksEvents {
  final TasksEnities task;

  UpdateTaskEvents({required this.task});
  @override
  List<Object?> get props => [task];
}

class DeleteTaskEvents extends TasksEvents {
  final TasksEnities task;

  DeleteTaskEvents({required this.task});
  @override
  List<Object?> get props => [task];
}
