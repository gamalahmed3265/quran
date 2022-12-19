import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/enities/tasks.dart';
import '../../compoents/list_of_task.dart';
import '../../controller/tasks/bloc.dart';
import '../../controller/tasks/state.dart';
import '../../state_render/state_renderer.dart';
import 'add_task.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskBloc, TasksState>(
        buildWhen: (previous, current) =>
            previous.reuestState != current.reuestState,
        builder: (ctx, state) {
          List<TasksEnities> tasksList = state.tasksList;
          return screenSwatich(
            state.reuestState,
            Scaffold(
              body: ListofTask(taskslsit: tasksList),
              floatingActionButton: FloatingActionButton(
                  child: const Icon(Icons.add),
                  onPressed: () {
                    addTaske(ctx);
                  }),
            ),
          );
        });
  }

  void addTaske(BuildContext ctx) {
    final TextEditingController textEditingController = TextEditingController();
    showModalBottomSheet(
        context: ctx,
        builder: (context) => AddTask(
              ctx: ctx,
              textEditingController: textEditingController,
            ));
  }
}
