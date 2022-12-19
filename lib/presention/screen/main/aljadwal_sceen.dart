import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/enities/tasks.dart';
import '../../controller/tasks/bloc.dart';
import '../../controller/tasks/events.dart';
import '../task/task_page.dart';

//الجدول
class AljadwalScreen extends StatelessWidget {
  const AljadwalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => TaskBloc()
          ..add(AddTaskEvents(task: TasksEnities(title: "title", date: 2))),
        child: const SafeArea(child: TaskScreen()));
  }
}
