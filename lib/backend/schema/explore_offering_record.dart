import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExploreOfferingRecord extends FirestoreRecord {
  ExploreOfferingRecord._(
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

  // "full_time_reference" field.
  DocumentReference? _fullTimeReference;
  DocumentReference? get fullTimeReference => _fullTimeReference;
  bool hasFullTimeReference() => _fullTimeReference != null;

  // "project_based_reference" field.
  DocumentReference? _projectBasedReference;
  DocumentReference? get projectBasedReference => _projectBasedReference;
  bool hasProjectBasedReference() => _projectBasedReference != null;

  // "hourly_based_reference" field.
  DocumentReference? _hourlyBasedReference;
  DocumentReference? get hourlyBasedReference => _hourlyBasedReference;
  bool hasHourlyBasedReference() => _hourlyBasedReference != null;

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
    _fullTimeReference =
        snapshotData['full_time_reference'] as DocumentReference?;
    _projectBasedReference =
        snapshotData['project_based_reference'] as DocumentReference?;
    _hourlyBasedReference =
        snapshotData['hourly_based_reference'] as DocumentReference?;
    _status = snapshotData['status'] as bool?;
    _createdAt = snapshotData['created_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('exploreOffering');

  static Stream<ExploreOfferingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ExploreOfferingRecord.fromSnapshot(s));

  static Future<ExploreOfferingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ExploreOfferingRecord.fromSnapshot(s));

  static ExploreOfferingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ExploreOfferingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ExploreOfferingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ExploreOfferingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ExploreOfferingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ExploreOfferingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createExploreOfferingRecordData({
  String? image,
  String? title,
  String? description,
  DocumentReference? fullTimeReference,
  DocumentReference? projectBasedReference,
  DocumentReference? hourlyBasedReference,
  bool? status,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image': image,
      'title': title,
      'description': description,
      'full_time_reference': fullTimeReference,
      'project_based_reference': projectBasedReference,
      'hourly_based_reference': hourlyBasedReference,
      'status': status,
      'created_at': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class ExploreOfferingRecordDocumentEquality
    implements Equality<ExploreOfferingRecord> {
  const ExploreOfferingRecordDocumentEquality();

  @override
  bool equals(ExploreOfferingRecord? e1, ExploreOfferingRecord? e2) {
    return e1?.image == e2?.image &&
        e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.fullTimeReference == e2?.fullTimeReference &&
        e1?.projectBasedReference == e2?.projectBasedReference &&
        e1?.hourlyBasedReference == e2?.hourlyBasedReference &&
        e1?.status == e2?.status &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(ExploreOfferingRecord? e) => const ListEquality().hash([
        e?.image,
        e?.title,
        e?.description,
        e?.fullTimeReference,
        e?.projectBasedReference,
        e?.hourlyBasedReference,
        e?.status,
        e?.createdAt
      ]);

  @override
  bool isValidKey(Object? o) => o is ExploreOfferingRecord;
}
