import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EnergyLogsRecord extends FirestoreRecord {
  EnergyLogsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "time_of_day" field.
  String? _timeOfDay;
  String get timeOfDay => _timeOfDay ?? '';
  bool hasTimeOfDay() => _timeOfDay != null;

  // "log_date" field.
  DateTime? _logDate;
  DateTime? get logDate => _logDate;
  bool hasLogDate() => _logDate != null;

  // "energy_level" field.
  int? _energyLevel;
  int get energyLevel => _energyLevel ?? 0;
  bool hasEnergyLevel() => _energyLevel != null;

  void _initializeFields() {
    _userId = snapshotData['user_id'] as String?;
    _timeOfDay = snapshotData['time_of_day'] as String?;
    _logDate = snapshotData['log_date'] as DateTime?;
    _energyLevel = castToType<int>(snapshotData['energy_level']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('energy_logs');

  static Stream<EnergyLogsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EnergyLogsRecord.fromSnapshot(s));

  static Future<EnergyLogsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EnergyLogsRecord.fromSnapshot(s));

  static EnergyLogsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EnergyLogsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EnergyLogsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EnergyLogsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EnergyLogsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EnergyLogsRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createEnergyLogsRecordData({
  String? userId,
  String? timeOfDay,
  DateTime? logDate,
  int? energyLevel,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_id': userId,
      'time_of_day': timeOfDay,
      'log_date': logDate,
      'energy_level': energyLevel,
    }.withoutNulls,
  );

  return firestoreData;
}

class EnergyLogsRecordDocumentEquality implements Equality<EnergyLogsRecord> {
  const EnergyLogsRecordDocumentEquality();

  @override
  bool equals(EnergyLogsRecord? e1, EnergyLogsRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.timeOfDay == e2?.timeOfDay &&
        e1?.logDate == e2?.logDate &&
        e1?.energyLevel == e2?.energyLevel;
  }

  @override
  int hash(EnergyLogsRecord? e) => const ListEquality()
      .hash([e?.userId, e?.timeOfDay, e?.logDate, e?.energyLevel]);

  @override
  bool isValidKey(Object? o) => o is EnergyLogsRecord;
}
