import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ScheduleCallRecord extends FirestoreRecord {
  ScheduleCallRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "designation" field.
  String? _designation;
  String get designation => _designation ?? '';
  bool hasDesignation() => _designation != null;

  // "calendly_link" field.
  String? _calendlyLink;
  String get calendlyLink => _calendlyLink ?? '';
  bool hasCalendlyLink() => _calendlyLink != null;

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
    _name = snapshotData['name'] as String?;
    _designation = snapshotData['designation'] as String?;
    _calendlyLink = snapshotData['calendly_link'] as String?;
    _status = snapshotData['status'] as bool?;
    _createdAt = snapshotData['created_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('scheduleCall');

  static Stream<ScheduleCallRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ScheduleCallRecord.fromSnapshot(s));

  static Future<ScheduleCallRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ScheduleCallRecord.fromSnapshot(s));

  static ScheduleCallRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ScheduleCallRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ScheduleCallRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ScheduleCallRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ScheduleCallRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ScheduleCallRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createScheduleCallRecordData({
  String? image,
  String? name,
  String? designation,
  String? calendlyLink,
  bool? status,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image': image,
      'name': name,
      'designation': designation,
      'calendly_link': calendlyLink,
      'status': status,
      'created_at': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class ScheduleCallRecordDocumentEquality
    implements Equality<ScheduleCallRecord> {
  const ScheduleCallRecordDocumentEquality();

  @override
  bool equals(ScheduleCallRecord? e1, ScheduleCallRecord? e2) {
    return e1?.image == e2?.image &&
        e1?.name == e2?.name &&
        e1?.designation == e2?.designation &&
        e1?.calendlyLink == e2?.calendlyLink &&
        e1?.status == e2?.status &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(ScheduleCallRecord? e) => const ListEquality().hash([
        e?.image,
        e?.name,
        e?.designation,
        e?.calendlyLink,
        e?.status,
        e?.createdAt
      ]);

  @override
  bool isValidKey(Object? o) => o is ScheduleCallRecord;
}
