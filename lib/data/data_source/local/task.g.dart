// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TaskLocalDataAdapter extends TypeAdapter<TaskLocalData> {
  @override
  final int typeId = 1;

  @override
  TaskLocalData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TaskLocalData(
      fields[0] as String,
      fields[1] as String,
      fields[2] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, TaskLocalData obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.user)
      ..writeByte(1)
      ..write(obj.task)
      ..writeByte(2)
      ..write(obj.complete);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskLocalDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
