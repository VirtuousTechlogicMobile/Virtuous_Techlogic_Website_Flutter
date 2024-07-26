import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BlogTagsRecord extends FirestoreRecord {
  BlogTagsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "tag" field.
  String? _tag;
  String get tag => _tag ?? '';
  bool hasTag() => _tag != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "index" field.
  int? _index;
  int get index => _index ?? 0;
  bool hasIndex() => _index != null;

  void _initializeFields() {
    _tag = snapshotData['tag'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _index = castToType<int>(snapshotData['index']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('blogTags');

  static Stream<BlogTagsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BlogTagsRecord.fromSnapshot(s));

  static Future<BlogTagsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BlogTagsRecord.fromSnapshot(s));

  static BlogTagsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BlogTagsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BlogTagsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BlogTagsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BlogTagsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BlogTagsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBlogTagsRecordData({
  String? tag,
  DateTime? createdAt,
  int? index,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'tag': tag,
      'created_at': createdAt,
      'index': index,
    }.withoutNulls,
  );

  return firestoreData;
}

class BlogTagsRecordDocumentEquality implements Equality<BlogTagsRecord> {
  const BlogTagsRecordDocumentEquality();

  @override
  bool equals(BlogTagsRecord? e1, BlogTagsRecord? e2) {
    return e1?.tag == e2?.tag &&
        e1?.createdAt == e2?.createdAt &&
        e1?.index == e2?.index;
  }

  @override
  int hash(BlogTagsRecord? e) =>
      const ListEquality().hash([e?.tag, e?.createdAt, e?.index]);

  @override
  bool isValidKey(Object? o) => o is BlogTagsRecord;
}
