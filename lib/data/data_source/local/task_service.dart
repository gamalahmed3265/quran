import 'package:hive/hive.dart';
import 'package:quran/data/data_source/local/task.dart';

class TaskService {
  late Box<TaskLocalData> _tasks;
  Future<void> init() async {
    Hive.registerAdapter(TaskLocalDataAdapter());
    _tasks = await Hive.openBox<TaskLocalData>("tasks");
  }

  List<TaskLocalData> getTasks() {
    // final task = _tasks.values.where((element) => element.complete);
    final task = _tasks.values;
    return task.toList();
  }

  void addTask(final String user, final String task) {
    _tasks.add(TaskLocalData(user, task, false));
  }

  void removeTask(final String user, final String task) {
    final taskRemove = _tasks.values
        .firstWhere((element) => element.task == task && element.user == user);
    // _tasks.delete(TaskLocalData(user, task, false));
    // taskRemove.d
  }
}
