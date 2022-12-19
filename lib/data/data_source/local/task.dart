import 'package:hive/hive.dart';

part "task.g.dart";

@HiveType(typeId: 1)
class TaskLocalData {
  @HiveField(0)
  final String user;
  @HiveField(1)
  final String task;
  @HiveField(2)
  final bool complete;

  TaskLocalData(
    this.user,
    this.task,
    this.complete,
  );
}
