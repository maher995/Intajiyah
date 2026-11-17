import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StreaksRecord extends FirestoreRecord {
  StreaksRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "habit_id" field.
  String? _habitId;
  String get habitId => _habitId ?? '';
  bool hasHabitId() => _habitId != null;

  // "current_count" field.
  int? _currentCount;
  int get currentCount => _currentCount ?? 0;
  bool hasCurrentCount() => _currentCount != null;

  // "longest_count" field.
  int? _longestCount;
  int get longestCount => _longestCount ?? 0;
  bool hasLongestCount() => _longestCount != null;

  // "last_updated" field.
  DateTime? _lastUpdated;
  DateTime? get lastUpdated => _lastUpdated;
  bool hasLastUpdated() => _lastUpdated != null;

  // "reward_level" field.
  String? _rewardLevel;
  String get rewardLevel => _rewardLevel ?? '';
  bool hasRewardLevel() => _rewardLevel != null;

  // "habit_ref" field.
  DocumentReference? _habitRef;
  DocumentReference? get habitRef => _habitRef;
  bool hasHabitRef() => _habitRef != null;

  void _initializeFields() {
    _userId = snapshotData['user_id'] as String?;
    _habitId = snapshotData['habit_id'] as String?;
    _currentCount = castToType<int>(snapshotData['current_count']);
    _longestCount = castToType<int>(snapshotData['longest_count']);
    _lastUpdated = snapshotData['last_updated'] as DateTime?;
    _rewardLevel = snapshotData['reward_level'] as String?;
    _habitRef = snapshotData['habit_ref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('streaks');

  static Stream<StreaksRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StreaksRecord.fromSnapshot(s));

  static Future<StreaksRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StreaksRecord.fromSnapshot(s));

  static StreaksRecord fromSnapshot(DocumentSnapshot snapshot) =>
      StreaksRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StreaksRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StreaksRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StreaksRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StreaksRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createStreaksRecordData({
  String? userId,
  String? habitId,
  int? currentCount,
  int? longestCount,
  DateTime? lastUpdated,
  String? rewardLevel,
  DocumentReference? habitRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_id': userId,
      'habit_id': habitId,
      'current_count': currentCount,
      'longest_count': longestCount,
      'last_updated': lastUpdated,
      'reward_level': rewardLevel,
      'habit_ref': habitRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class StreaksRecordDocumentEquality implements Equality<StreaksRecord> {
  const StreaksRecordDocumentEquality();

  @override
  bool equals(StreaksRecord? e1, StreaksRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.habitId == e2?.habitId &&
        e1?.currentCount == e2?.currentCount &&
        e1?.longestCount == e2?.longestCount &&
        e1?.lastUpdated == e2?.lastUpdated &&
        e1?.rewardLevel == e2?.rewardLevel &&
        e1?.habitRef == e2?.habitRef;
  }

  @override
  int hash(StreaksRecord? e) => const ListEquality().hash([
        e?.userId,
        e?.habitId,
        e?.currentCount,
        e?.longestCount,
        e?.lastUpdated,
        e?.rewardLevel,
        e?.habitRef
      ]);

  @override
  bool isValidKey(Object? o) => o is StreaksRecord;
}
