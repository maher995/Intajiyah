import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Collection achievements
class AchievementsRecord extends FirestoreRecord {
  AchievementsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "habit_ref" field.
  DocumentReference? _habitRef;
  DocumentReference? get habitRef => _habitRef;
  bool hasHabitRef() => _habitRef != null;

  // "milestone" field.
  int? _milestone;
  int get milestone => _milestone ?? 0;
  bool hasMilestone() => _milestone != null;

  // "unlocked_at" field.
  DateTime? _unlockedAt;
  DateTime? get unlockedAt => _unlockedAt;
  bool hasUnlockedAt() => _unlockedAt != null;

  void _initializeFields() {
    _userId = snapshotData['user_id'] as String?;
    _habitRef = snapshotData['habit_ref'] as DocumentReference?;
    _milestone = castToType<int>(snapshotData['milestone']);
    _unlockedAt = snapshotData['unlocked_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('achievements');

  static Stream<AchievementsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AchievementsRecord.fromSnapshot(s));

  static Future<AchievementsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AchievementsRecord.fromSnapshot(s));

  static AchievementsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AchievementsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AchievementsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AchievementsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AchievementsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AchievementsRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createAchievementsRecordData({
  String? userId,
  DocumentReference? habitRef,
  int? milestone,
  DateTime? unlockedAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_id': userId,
      'habit_ref': habitRef,
      'milestone': milestone,
      'unlocked_at': unlockedAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class AchievementsRecordDocumentEquality
    implements Equality<AchievementsRecord> {
  const AchievementsRecordDocumentEquality();

  @override
  bool equals(AchievementsRecord? e1, AchievementsRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.habitRef == e2?.habitRef &&
        e1?.milestone == e2?.milestone &&
        e1?.unlockedAt == e2?.unlockedAt;
  }

  @override
  int hash(AchievementsRecord? e) => const ListEquality()
      .hash([e?.userId, e?.habitRef, e?.milestone, e?.unlockedAt]);

  @override
  bool isValidKey(Object? o) => o is AchievementsRecord;
}
