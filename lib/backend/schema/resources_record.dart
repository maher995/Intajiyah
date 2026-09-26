import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResourcesRecord extends FirestoreRecord {
  ResourcesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "file_url" field.
  String? _fileUrl;
  String get fileUrl => _fileUrl ?? '';
  bool hasFileUrl() => _fileUrl != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "author" field.
  String? _author;
  String get author => _author ?? '';
  bool hasAuthor() => _author != null;

  // "pages" field.
  int? _pages;
  int get pages => _pages ?? 0;
  bool hasPages() => _pages != null;

  // "size_mb" field.
  double? _sizeMb;
  double get sizeMb => _sizeMb ?? 0.0;
  bool hasSizeMb() => _sizeMb != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _category = snapshotData['category'] as String?;
    _fileUrl = snapshotData['file_url'] as String?;
    _description = snapshotData['description'] as String?;
    _author = snapshotData['author'] as String?;
    _pages = castToType<int>(snapshotData['pages']);
    _sizeMb = castToType<double>(snapshotData['size_mb']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('resources');

  static Stream<ResourcesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ResourcesRecord.fromSnapshot(s));

  static Future<ResourcesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ResourcesRecord.fromSnapshot(s));

  static ResourcesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ResourcesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ResourcesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ResourcesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ResourcesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ResourcesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createResourcesRecordData({
  String? title,
  String? category,
  String? fileUrl,
  String? description,
  String? author,
  int? pages,
  double? sizeMb,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'category': category,
      'file_url': fileUrl,
      'description': description,
      'author': author,
      'pages': pages,
      'size_mb': sizeMb,
    }.withoutNulls,
  );

  return firestoreData;
}

class ResourcesRecordDocumentEquality implements Equality<ResourcesRecord> {
  const ResourcesRecordDocumentEquality();

  @override
  bool equals(ResourcesRecord? e1, ResourcesRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.category == e2?.category &&
        e1?.fileUrl == e2?.fileUrl &&
        e1?.description == e2?.description &&
        e1?.author == e2?.author &&
        e1?.pages == e2?.pages &&
        e1?.sizeMb == e2?.sizeMb;
  }

  @override
  int hash(ResourcesRecord? e) => const ListEquality().hash([
        e?.title,
        e?.category,
        e?.fileUrl,
        e?.description,
        e?.author,
        e?.pages,
        e?.sizeMb
      ]);

  @override
  bool isValidKey(Object? o) => o is ResourcesRecord;
}
