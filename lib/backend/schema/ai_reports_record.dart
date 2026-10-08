import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AiReportsRecord extends FirestoreRecord {
  AiReportsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "summary" field.
  String? _summary;
  String get summary => _summary ?? '';
  bool hasSummary() => _summary != null;

  // "recommendations" field.
  String? _recommendations;
  String get recommendations => _recommendations ?? '';
  bool hasRecommendations() => _recommendations != null;

  // "period_start" field.
  DateTime? _periodStart;
  DateTime? get periodStart => _periodStart;
  bool hasPeriodStart() => _periodStart != null;

  // "period_end" field.
  DateTime? _periodEnd;
  DateTime? get periodEnd => _periodEnd;
  bool hasPeriodEnd() => _periodEnd != null;

  void _initializeFields() {
    _userId = snapshotData['user_id'] as String?;
    _summary = snapshotData['summary'] as String?;
    _recommendations = snapshotData['recommendations'] as String?;
    _periodStart = snapshotData['period_start'] as DateTime?;
    _periodEnd = snapshotData['period_end'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ai_reports');

  static Stream<AiReportsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AiReportsRecord.fromSnapshot(s));

  static Future<AiReportsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AiReportsRecord.fromSnapshot(s));

  static AiReportsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AiReportsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AiReportsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AiReportsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AiReportsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AiReportsRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createAiReportsRecordData({
  String? userId,
  String? summary,
  String? recommendations,
  DateTime? periodStart,
  DateTime? periodEnd,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_id': userId,
      'summary': summary,
      'recommendations': recommendations,
      'period_start': periodStart,
      'period_end': periodEnd,
    }.withoutNulls,
  );

  return firestoreData;
}

class AiReportsRecordDocumentEquality implements Equality<AiReportsRecord> {
  const AiReportsRecordDocumentEquality();

  @override
  bool equals(AiReportsRecord? e1, AiReportsRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.summary == e2?.summary &&
        e1?.recommendations == e2?.recommendations &&
        e1?.periodStart == e2?.periodStart &&
        e1?.periodEnd == e2?.periodEnd;
  }

  @override
  int hash(AiReportsRecord? e) => const ListEquality().hash([
        e?.userId,
        e?.summary,
        e?.recommendations,
        e?.periodStart,
        e?.periodEnd
      ]);

  @override
  bool isValidKey(Object? o) => o is AiReportsRecord;
}
