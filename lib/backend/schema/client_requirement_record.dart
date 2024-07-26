import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClientRequirementRecord extends FirestoreRecord {
  ClientRequirementRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "full_name" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  bool hasFullName() => _fullName != null;

  // "email_address" field.
  String? _emailAddress;
  String get emailAddress => _emailAddress ?? '';
  bool hasEmailAddress() => _emailAddress != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "company_name" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  bool hasCompanyName() => _companyName != null;

  // "service" field.
  String? _service;
  String get service => _service ?? '';
  bool hasService() => _service != null;

  // "budget" field.
  int? _budget;
  int get budget => _budget ?? 0;
  bool hasBudget() => _budget != null;

  // "describe_your_project" field.
  String? _describeYourProject;
  String get describeYourProject => _describeYourProject ?? '';
  bool hasDescribeYourProject() => _describeYourProject != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _fullName = snapshotData['full_name'] as String?;
    _emailAddress = snapshotData['email_address'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _companyName = snapshotData['company_name'] as String?;
    _service = snapshotData['service'] as String?;
    _budget = castToType<int>(snapshotData['budget']);
    _describeYourProject = snapshotData['describe_your_project'] as String?;
    _status = snapshotData['status'] as bool?;
    _createdAt = snapshotData['created_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('clientRequirement');

  static Stream<ClientRequirementRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClientRequirementRecord.fromSnapshot(s));

  static Future<ClientRequirementRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ClientRequirementRecord.fromSnapshot(s));

  static ClientRequirementRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClientRequirementRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClientRequirementRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClientRequirementRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClientRequirementRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClientRequirementRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClientRequirementRecordData({
  String? fullName,
  String? emailAddress,
  String? phoneNumber,
  String? companyName,
  String? service,
  int? budget,
  String? describeYourProject,
  bool? status,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'full_name': fullName,
      'email_address': emailAddress,
      'phone_number': phoneNumber,
      'company_name': companyName,
      'service': service,
      'budget': budget,
      'describe_your_project': describeYourProject,
      'status': status,
      'created_at': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClientRequirementRecordDocumentEquality
    implements Equality<ClientRequirementRecord> {
  const ClientRequirementRecordDocumentEquality();

  @override
  bool equals(ClientRequirementRecord? e1, ClientRequirementRecord? e2) {
    return e1?.fullName == e2?.fullName &&
        e1?.emailAddress == e2?.emailAddress &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.companyName == e2?.companyName &&
        e1?.service == e2?.service &&
        e1?.budget == e2?.budget &&
        e1?.describeYourProject == e2?.describeYourProject &&
        e1?.status == e2?.status &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(ClientRequirementRecord? e) => const ListEquality().hash([
        e?.fullName,
        e?.emailAddress,
        e?.phoneNumber,
        e?.companyName,
        e?.service,
        e?.budget,
        e?.describeYourProject,
        e?.status,
        e?.createdAt
      ]);

  @override
  bool isValidKey(Object? o) => o is ClientRequirementRecord;
}
