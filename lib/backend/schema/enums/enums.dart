import 'package:collection/collection.dart';

enum TaskPriority {
  highFocus,
  mediumEffort,
  lowEffort,
}

enum EffortLevel {
  low,
  medium,
  high,
}

enum TaskStatus {
  pending,
  completed,
}

enum TaskCategory {
  work,
  study,
  personal,
  health,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (TaskPriority):
      return TaskPriority.values.deserialize(value) as T?;
    case (EffortLevel):
      return EffortLevel.values.deserialize(value) as T?;
    case (TaskStatus):
      return TaskStatus.values.deserialize(value) as T?;
    case (TaskCategory):
      return TaskCategory.values.deserialize(value) as T?;
    default:
      return null;
  }
}
