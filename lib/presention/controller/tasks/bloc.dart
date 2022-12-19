import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/domain/enities/tasks.dart';
import 'package:quran/presention/controller/tasks/events.dart';
import 'package:quran/presention/controller/tasks/state.dart';
import 'dart:async';

import 'package:quran/presention/state_render/request_state.dart';

class TaskBloc extends Bloc<TasksEvents, TasksState> {
  TaskBloc() : super(const TasksState()) {
    on<AddTaskEvents>(addTaks);
    on<UpdateTaskEvents>(updateTask);
    on<DeleteTaskEvents>(deleteTask);
  }

  FutureOr<void> addTaks(AddTaskEvents event, Emitter<TasksState> emit) async {
    emit(const TasksState(reuestState: ReuestState.loading));
    final state = this.state;
    List<TasksEnities> allTask = List.from(state.tasksList)..add(event.task);
    print(event.task);
    emit(TasksState(reuestState: ReuestState.loaded, tasksList: allTask));
  }

  FutureOr<void> updateTask(
      UpdateTaskEvents event, Emitter<TasksState> emit) async {
    emit(const TasksState(reuestState: ReuestState.loading));
    final state = this.state;
    final task = event.task;

    List<TasksEnities> allTask = List.from(state.tasksList)..remove(task);
    task.isDone == false
        ? allTask.add(task.copyWith(isDone: true))
        : allTask.add(task.copyWith(isDone: false));
    emit(TasksState(
      tasksList: allTask,
      reuestState: ReuestState.loaded,
    ));
  }

  FutureOr<void> deleteTask(
      DeleteTaskEvents event, Emitter<TasksState> emit) async {
    emit(const TasksState(reuestState: ReuestState.loading));
    final state = this.state;
    final task = event.task;

    List<TasksEnities> allTask = List.from(state.tasksList)..remove(task);

    emit(TasksState(
      tasksList: allTask,
      reuestState: ReuestState.loaded,
    ));
  }
}
