import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FocusSessionsRecord extends FirestoreRecord {
  FocusSessionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "task_id" field.
  String? _taskId;
  String get taskId => _taskId ?? '';
  bool hasTaskId() => _taskId != null;

  // "start_time" field.
  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  bool hasStartTime() => _startTime != null;

  // "end_time" field.
  DateTime? _endTime;
  DateTime? get endTime => _endTime;
  bool hasEndTime() => _endTime != null;

  // "work_duration" field.
  int? _workDuration;
  int get workDuration => _workDuration ?? 0;
  bool hasWorkDuration() => _workDuration != null;

  // "break_duration" field.
  int? _breakDuration;
  int get breakDuration => _breakDuration ?? 0;
  bool hasBreakDuration() => _breakDuration != null;

  void _initializeFields() {
    _userId = snapshotData['user_id'] as String?;
    _taskId = snapshotData['task_id'] as String?;
    _startTime = snapshotData['start_time'] as DateTime?;
    _endTime = snapshotData['end_time'] as DateTime?;
    _workDuration = castToType<int>(snapshotData['work_duration']);
    _breakDuration = castToType<int>(snapshotData['break_duration']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('focus_sessions');

  static Stream<FocusSessionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FocusSessionsRecord.fromSnapshot(s));

  static Future<FocusSessionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FocusSessionsRecord.fromSnapshot(s));

  static FocusSessionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FocusSessionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FocusSessionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FocusSessionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FocusSessionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FocusSessionsRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createFocusSessionsRecordData({
  String? userId,
  String? taskId,
  DateTime? startTime,
  DateTime? endTime,
  int? workDuration,
  int? breakDuration,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_id': userId,
      'task_id': taskId,
      'start_time': startTime,
      'end_time': endTime,
      'work_duration': workDuration,
      'break_duration': breakDuration,
    }.withoutNulls,
  );

  return firestoreData;
}

class FocusSessionsRecordDocumentEquality
    implements Equality<FocusSessionsRecord> {
  const FocusSessionsRecordDocumentEquality();

  @override
  bool equals(FocusSessionsRecord? e1, FocusSessionsRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.taskId == e2?.taskId &&
        e1?.startTime == e2?.startTime &&
        e1?.endTime == e2?.endTime &&
        e1?.workDuration == e2?.workDuration &&
        e1?.breakDuration == e2?.breakDuration;
  }

  @override
  int hash(FocusSessionsRecord? e) => const ListEquality().hash([
        e?.userId,
        e?.taskId,
        e?.startTime,
        e?.endTime,
        e?.workDuration,
        e?.breakDuration
      ]);

  @override
  bool isValidKey(Object? o) => o is FocusSessionsRecord;
}
