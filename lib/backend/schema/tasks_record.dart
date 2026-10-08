import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TasksRecord extends FirestoreRecord {
  TasksRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "due_date" field.
  DateTime? _dueDate;
  DateTime? get dueDate => _dueDate;
  bool hasDueDate() => _dueDate != null;

  // "completed_at" field.
  DateTime? _completedAt;
  DateTime? get completedAt => _completedAt;
  bool hasCompletedAt() => _completedAt != null;

  // "priority" field.
  TaskPriority? _priority;
  TaskPriority? get priority => _priority;
  bool hasPriority() => _priority != null;

  // "effort_level" field.
  EffortLevel? _effortLevel;
  EffortLevel? get effortLevel => _effortLevel;
  bool hasEffortLevel() => _effortLevel != null;

  // "category" field.
  TaskCategory? _category;
  TaskCategory? get category => _category;
  bool hasCategory() => _category != null;

  // "status" field.
  TaskStatus? _status;
  TaskStatus? get status => _status;
  bool hasStatus() => _status != null;

  // "is_deleted" field.
  bool? _isDeleted;
  bool get isDeleted => _isDeleted ?? false;
  bool hasIsDeleted() => _isDeleted != null;

  // "deleted_at" field.
  DateTime? _deletedAt;
  DateTime? get deletedAt => _deletedAt;
  bool hasDeletedAt() => _deletedAt != null;

  // "subtask_total" field.
  int? _subtaskTotal;
  int get subtaskTotal => _subtaskTotal ?? 0;
  bool hasSubtaskTotal() => _subtaskTotal != null;

  // "subtask_done" field.
  int? _subtaskDone;
  int get subtaskDone => _subtaskDone ?? 0;
  bool hasSubtaskDone() => _subtaskDone != null;

  void _initializeFields() {
    _userId = snapshotData['user_id'] as String?;
    _title = snapshotData['title'] as String?;
    _dueDate = snapshotData['due_date'] as DateTime?;
    _completedAt = snapshotData['completed_at'] as DateTime?;
    _priority = snapshotData['priority'] is TaskPriority
        ? snapshotData['priority']
        : deserializeEnum<TaskPriority>(snapshotData['priority']);
    _effortLevel = snapshotData['effort_level'] is EffortLevel
        ? snapshotData['effort_level']
        : deserializeEnum<EffortLevel>(snapshotData['effort_level']);
    _category = snapshotData['category'] is TaskCategory
        ? snapshotData['category']
        : deserializeEnum<TaskCategory>(snapshotData['category']);
    _status = snapshotData['status'] is TaskStatus
        ? snapshotData['status']
        : deserializeEnum<TaskStatus>(snapshotData['status']);
    _isDeleted = snapshotData['is_deleted'] as bool?;
    _deletedAt = snapshotData['deleted_at'] as DateTime?;
    _subtaskTotal = castToType<int>(snapshotData['subtask_total']);
    _subtaskDone = castToType<int>(snapshotData['subtask_done']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tasks');

  static Stream<TasksRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TasksRecord.fromSnapshot(s));

  static Future<TasksRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TasksRecord.fromSnapshot(s));

  static TasksRecord fromSnapshot(DocumentSnapshot snapshot) => TasksRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TasksRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TasksRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TasksRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TasksRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createTasksRecordData({
  String? userId,
  String? title,
  DateTime? dueDate,
  DateTime? completedAt,
  TaskPriority? priority,
  EffortLevel? effortLevel,
  TaskCategory? category,
  TaskStatus? status,
  bool? isDeleted,
  DateTime? deletedAt,
  int? subtaskTotal,
  int? subtaskDone,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_id': userId,
      'title': title,
      'due_date': dueDate,
      'completed_at': completedAt,
      'priority': priority,
      'effort_level': effortLevel,
      'category': category,
      'status': status,
      'is_deleted': isDeleted,
      'deleted_at': deletedAt,
      'subtask_total': subtaskTotal,
      'subtask_done': subtaskDone,
    }.withoutNulls,
  );

  return firestoreData;
}

class TasksRecordDocumentEquality implements Equality<TasksRecord> {
  const TasksRecordDocumentEquality();

  @override
  bool equals(TasksRecord? e1, TasksRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.title == e2?.title &&
        e1?.dueDate == e2?.dueDate &&
        e1?.completedAt == e2?.completedAt &&
        e1?.priority == e2?.priority &&
        e1?.effortLevel == e2?.effortLevel &&
        e1?.category == e2?.category &&
        e1?.status == e2?.status &&
        e1?.isDeleted == e2?.isDeleted &&
        e1?.deletedAt == e2?.deletedAt &&
        e1?.subtaskTotal == e2?.subtaskTotal &&
        e1?.subtaskDone == e2?.subtaskDone;
  }

  @override
  int hash(TasksRecord? e) => const ListEquality().hash([
        e?.userId,
        e?.title,
        e?.dueDate,
        e?.completedAt,
        e?.priority,
        e?.effortLevel,
        e?.category,
        e?.status,
        e?.isDeleted,
        e?.deletedAt,
        e?.subtaskTotal,
        e?.subtaskDone
      ]);

  @override
  bool isValidKey(Object? o) => o is TasksRecord;
}
