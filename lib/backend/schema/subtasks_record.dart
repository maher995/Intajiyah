import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SubtasksRecord extends FirestoreRecord {
  SubtasksRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "is_done" field.
  bool? _isDone;
  bool get isDone => _isDone ?? false;
  bool hasIsDone() => _isDone != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _isDone = snapshotData['is_done'] as bool?;
    _createdAt = snapshotData['created_at'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('subtasks')
          : FirebaseFirestore.instance.collectionGroup('subtasks');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('subtasks').doc(id);

  static Stream<SubtasksRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SubtasksRecord.fromSnapshot(s));

  static Future<SubtasksRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SubtasksRecord.fromSnapshot(s));

  static SubtasksRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SubtasksRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SubtasksRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SubtasksRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SubtasksRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SubtasksRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSubtasksRecordData({
  String? title,
  bool? isDone,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'is_done': isDone,
      'created_at': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class SubtasksRecordDocumentEquality implements Equality<SubtasksRecord> {
  const SubtasksRecordDocumentEquality();

  @override
  bool equals(SubtasksRecord? e1, SubtasksRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.isDone == e2?.isDone &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(SubtasksRecord? e) =>
      const ListEquality().hash([e?.title, e?.isDone, e?.createdAt]);

  @override
  bool isValidKey(Object? o) => o is SubtasksRecord;
}
