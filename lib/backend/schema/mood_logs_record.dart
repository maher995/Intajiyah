import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MoodLogsRecord extends FirestoreRecord {
  MoodLogsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "mood" field.
  String? _mood;
  String get mood => _mood ?? '';
  bool hasMood() => _mood != null;

  // "note" field.
  String? _note;
  String get note => _note ?? '';
  bool hasNote() => _note != null;

  // "log_date" field.
  DateTime? _logDate;
  DateTime? get logDate => _logDate;
  bool hasLogDate() => _logDate != null;

  void _initializeFields() {
    _userId = snapshotData['user_id'] as String?;
    _mood = snapshotData['mood'] as String?;
    _note = snapshotData['note'] as String?;
    _logDate = snapshotData['log_date'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mood_logs');

  static Stream<MoodLogsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MoodLogsRecord.fromSnapshot(s));

  static Future<MoodLogsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MoodLogsRecord.fromSnapshot(s));

  static MoodLogsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MoodLogsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MoodLogsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MoodLogsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MoodLogsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MoodLogsRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createMoodLogsRecordData({
  String? userId,
  String? mood,
  String? note,
  DateTime? logDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_id': userId,
      'mood': mood,
      'note': note,
      'log_date': logDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class MoodLogsRecordDocumentEquality implements Equality<MoodLogsRecord> {
  const MoodLogsRecordDocumentEquality();

  @override
  bool equals(MoodLogsRecord? e1, MoodLogsRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.mood == e2?.mood &&
        e1?.note == e2?.note &&
        e1?.logDate == e2?.logDate;
  }

  @override
  int hash(MoodLogsRecord? e) =>
      const ListEquality().hash([e?.userId, e?.mood, e?.note, e?.logDate]);

  @override
  bool isValidKey(Object? o) => o is MoodLogsRecord;
}
