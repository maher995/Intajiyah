import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

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

  // "priority" field.
  String? _priority;
  String get priority => _priority ?? '';
  bool hasPriority() => _priority != null;

  // "effort_level" field.
  String? _effortLevel;
  String get effortLevel => _effortLevel ?? '';
  bool hasEffortLevel() => _effortLevel != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "due_date" field.
  DateTime? _dueDate;
  DateTime? get dueDate => _dueDate;
  bool hasDueDate() => _dueDate != null;

  // "completed_at" field.
  DateTime? _completedAt;
  DateTime? get completedAt => _completedAt;
  bool hasCompletedAt() => _completedAt != null;

  void _initializeFields() {
    _userId = snapshotData['user_id'] as String?;
    _title = snapshotData['title'] as String?;
    _priority = snapshotData['priority'] as String?;
    _effortLevel = snapshotData['effort_level'] as String?;
    _category = snapshotData['category'] as String?;
    _status = snapshotData['status'] as String?;
    _dueDate = snapshotData['due_date'] as DateTime?;
    _completedAt = snapshotData['completed_at'] as DateTime?;
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
      other is TasksRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTasksRecordData({
  String? userId,
  String? title,
  String? priority,
  String? effortLevel,
  String? category,
  String? status,
  DateTime? dueDate,
  DateTime? completedAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_id': userId,
      'title': title,
      'priority': priority,
      'effort_level': effortLevel,
      'category': category,
      'status': status,
      'due_date': dueDate,
      'completed_at': completedAt,
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
        e1?.priority == e2?.priority &&
        e1?.effortLevel == e2?.effortLevel &&
        e1?.category == e2?.category &&
        e1?.status == e2?.status &&
        e1?.dueDate == e2?.dueDate &&
        e1?.completedAt == e2?.completedAt;
  }

  @override
  int hash(TasksRecord? e) => const ListEquality().hash([
        e?.userId,
        e?.title,
        e?.priority,
        e?.effortLevel,
        e?.category,
        e?.status,
        e?.dueDate,
        e?.completedAt
      ]);

  @override
  bool isValidKey(Object? o) => o is TasksRecord;
}
