import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JournalEntriesRecord extends FirestoreRecord {
  JournalEntriesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "entry_date" field.
  DateTime? _entryDate;
  DateTime? get entryDate => _entryDate;
  bool hasEntryDate() => _entryDate != null;

  void _initializeFields() {
    _userId = snapshotData['user_id'] as String?;
    _content = snapshotData['content'] as String?;
    _entryDate = snapshotData['entry_date'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('journal_entries');

  static Stream<JournalEntriesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JournalEntriesRecord.fromSnapshot(s));

  static Future<JournalEntriesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => JournalEntriesRecord.fromSnapshot(s));

  static JournalEntriesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      JournalEntriesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JournalEntriesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JournalEntriesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JournalEntriesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JournalEntriesRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createJournalEntriesRecordData({
  String? userId,
  String? content,
  DateTime? entryDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_id': userId,
      'content': content,
      'entry_date': entryDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class JournalEntriesRecordDocumentEquality
    implements Equality<JournalEntriesRecord> {
  const JournalEntriesRecordDocumentEquality();

  @override
  bool equals(JournalEntriesRecord? e1, JournalEntriesRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.content == e2?.content &&
        e1?.entryDate == e2?.entryDate;
  }

  @override
  int hash(JournalEntriesRecord? e) =>
      const ListEquality().hash([e?.userId, e?.content, e?.entryDate]);

  @override
  bool isValidKey(Object? o) => o is JournalEntriesRecord;
}
