import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OurCultureRecord extends FirestoreRecord {
  OurCultureRecord._(
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

  void _initializeFields() {
    _image = snapshotData['image'] as String?;
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _status = snapshotData['status'] as bool?;
    _createdAt = snapshotData['created_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ourCulture');

  static Stream<OurCultureRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OurCultureRecord.fromSnapshot(s));

  static Future<OurCultureRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OurCultureRecord.fromSnapshot(s));

  static OurCultureRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OurCultureRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OurCultureRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OurCultureRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OurCultureRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OurCultureRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOurCultureRecordData({
  String? image,
  String? title,
  String? description,
  bool? status,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image': image,
      'title': title,
      'description': description,
      'status': status,
      'created_at': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class OurCultureRecordDocumentEquality implements Equality<OurCultureRecord> {
  const OurCultureRecordDocumentEquality();

  @override
  bool equals(OurCultureRecord? e1, OurCultureRecord? e2) {
    return e1?.image == e2?.image &&
        e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.status == e2?.status &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(OurCultureRecord? e) => const ListEquality()
      .hash([e?.image, e?.title, e?.description, e?.status, e?.createdAt]);

  @override
  bool isValidKey(Object? o) => o is OurCultureRecord;
}
