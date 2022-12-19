import 'package:equatable/equatable.dart';
import 'package:quran/domain/enities/tasks.dart';

import '../../state_render/request_state.dart';

abstract class TodosState extends Equatable {
  const TodosState();
}

// class TodosInitial extends TodosState {
//   @override
//   List<Object> get props => [];
// }

class TasksState extends TodosState {
  final List<TasksEnities> tasksList;
  final ReuestState reuestState;

  const TasksState(
      {this.tasksList = const <TasksEnities>[],
      this.reuestState = ReuestState.loading});
  @override
  List<Object?> get props => [tasksList, reuestState];
}
