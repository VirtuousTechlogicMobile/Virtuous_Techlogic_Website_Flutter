import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BlogDetailsRecord extends FirestoreRecord {
  BlogDetailsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "edit_description" field.
  String? _editDescription;
  String get editDescription => _editDescription ?? '';
  bool hasEditDescription() => _editDescription != null;

  // "blog_tags" field.
  List<String>? _blogTags;
  List<String> get blogTags => _blogTags ?? const [];
  bool hasBlogTags() => _blogTags != null;

  void _initializeFields() {
    _image = snapshotData['image'] as String?;
    _title = snapshotData['title'] as String?;
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _status = snapshotData['status'] as bool?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _editDescription = snapshotData['edit_description'] as String?;
    _blogTags = getDataList(snapshotData['blog_tags']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('blogDetails');

  static Stream<BlogDetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BlogDetailsRecord.fromSnapshot(s));

  static Future<BlogDetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BlogDetailsRecord.fromSnapshot(s));

  static BlogDetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BlogDetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BlogDetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BlogDetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BlogDetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BlogDetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBlogDetailsRecordData({
  String? image,
  String? title,
  String? name,
  String? description,
  bool? status,
  DateTime? createdAt,
  String? editDescription,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image': image,
      'title': title,
      'name': name,
      'description': description,
      'status': status,
      'created_at': createdAt,
      'edit_description': editDescription,
    }.withoutNulls,
  );

  return firestoreData;
}

class BlogDetailsRecordDocumentEquality implements Equality<BlogDetailsRecord> {
  const BlogDetailsRecordDocumentEquality();

  @override
  bool equals(BlogDetailsRecord? e1, BlogDetailsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.image == e2?.image &&
        e1?.title == e2?.title &&
        e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.status == e2?.status &&
        e1?.createdAt == e2?.createdAt &&
        e1?.editDescription == e2?.editDescription &&
        listEquality.equals(e1?.blogTags, e2?.blogTags);
  }

  @override
  int hash(BlogDetailsRecord? e) => const ListEquality().hash([
        e?.image,
        e?.title,
        e?.name,
        e?.description,
        e?.status,
        e?.createdAt,
        e?.editDescription,
        e?.blogTags
      ]);

  @override
  bool isValidKey(Object? o) => o is BlogDetailsRecord;
}
