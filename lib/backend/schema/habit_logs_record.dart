import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HabitLogsRecord extends FirestoreRecord {
  HabitLogsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "log_date" field.
  DateTime? _logDate;
  DateTime? get logDate => _logDate;
  bool hasLogDate() => _logDate != null;

  // "completed" field.
  bool? _completed;
  bool get completed => _completed ?? false;
  bool hasCompleted() => _completed != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _logDate = snapshotData['log_date'] as DateTime?;
    _completed = snapshotData['completed'] as bool?;
    _userId = snapshotData['user_id'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('habit_logs')
          : FirebaseFirestore.instance.collectionGroup('habit_logs');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('habit_logs').doc(id);

  static Stream<HabitLogsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HabitLogsRecord.fromSnapshot(s));

  static Future<HabitLogsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HabitLogsRecord.fromSnapshot(s));

  static HabitLogsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HabitLogsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HabitLogsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HabitLogsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HabitLogsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HabitLogsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHabitLogsRecordData({
  DateTime? logDate,
  bool? completed,
  String? userId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'log_date': logDate,
      'completed': completed,
      'user_id': userId,
    }.withoutNulls,
  );

  return firestoreData;
}

class HabitLogsRecordDocumentEquality implements Equality<HabitLogsRecord> {
  const HabitLogsRecordDocumentEquality();

  @override
  bool equals(HabitLogsRecord? e1, HabitLogsRecord? e2) {
    return e1?.logDate == e2?.logDate &&
        e1?.completed == e2?.completed &&
        e1?.userId == e2?.userId;
  }

  @override
  int hash(HabitLogsRecord? e) =>
      const ListEquality().hash([e?.logDate, e?.completed, e?.userId]);

  @override
  bool isValidKey(Object? o) => o is HabitLogsRecord;
}
