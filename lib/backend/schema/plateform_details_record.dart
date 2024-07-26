import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlateformDetailsRecord extends FirestoreRecord {
  PlateformDetailsRecord._(
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

  // "list_of_points" field.
  List<String>? _listOfPoints;
  List<String> get listOfPoints => _listOfPoints ?? const [];
  bool hasListOfPoints() => _listOfPoints != null;

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
    _listOfPoints = getDataList(snapshotData['list_of_points']);
    _status = snapshotData['status'] as bool?;
    _createdAt = snapshotData['created_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('plateformDetails');

  static Stream<PlateformDetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PlateformDetailsRecord.fromSnapshot(s));

  static Future<PlateformDetailsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => PlateformDetailsRecord.fromSnapshot(s));

  static PlateformDetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PlateformDetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PlateformDetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PlateformDetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PlateformDetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PlateformDetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPlateformDetailsRecordData({
  String? image,
  String? title,
  bool? status,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image': image,
      'title': title,
      'status': status,
      'created_at': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class PlateformDetailsRecordDocumentEquality
    implements Equality<PlateformDetailsRecord> {
  const PlateformDetailsRecordDocumentEquality();

  @override
  bool equals(PlateformDetailsRecord? e1, PlateformDetailsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.image == e2?.image &&
        e1?.title == e2?.title &&
        listEquality.equals(e1?.listOfPoints, e2?.listOfPoints) &&
        e1?.status == e2?.status &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(PlateformDetailsRecord? e) => const ListEquality()
      .hash([e?.image, e?.title, e?.listOfPoints, e?.status, e?.createdAt]);

  @override
  bool isValidKey(Object? o) => o is PlateformDetailsRecord;
}
