import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart';

class ContactDetailsRecord extends FirestoreRecord {
  ContactDetailsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "whatsapp_number" field.
  String? _whatsappNumber;
  String get whatsappNumber => _whatsappNumber ?? '';
  bool hasWhatsappNumber() => _whatsappNumber != null;

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
    _description = snapshotData['description'] as String?;
    _email = snapshotData['email'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _whatsappNumber = snapshotData['whatsapp_number'] as String?;
    _status = snapshotData['status'] as bool?;
    _createdAt = snapshotData['created_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('contactDetails');

  static Stream<ContactDetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ContactDetailsRecord.fromSnapshot(s));

  static Future<ContactDetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ContactDetailsRecord.fromSnapshot(s));

  static ContactDetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ContactDetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ContactDetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ContactDetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ContactDetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ContactDetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createContactDetailsRecordData({
  String? image,
  String? description,
  String? email,
  String? phoneNumber,
  String? whatsappNumber,
  bool? status,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image': image,
      'description': description,
      'email': email,
      'phone_number': phoneNumber,
      'whatsapp_number': whatsappNumber,
      'status': status,
      'created_at': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class ContactDetailsRecordDocumentEquality
    implements Equality<ContactDetailsRecord> {
  const ContactDetailsRecordDocumentEquality();

  @override
  bool equals(ContactDetailsRecord? e1, ContactDetailsRecord? e2) {
    return e1?.image == e2?.image &&
        e1?.description == e2?.description &&
        e1?.email == e2?.email &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.whatsappNumber == e2?.whatsappNumber &&
        e1?.status == e2?.status &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(ContactDetailsRecord? e) => const ListEquality().hash([
        e?.image,
        e?.description,
        e?.email,
        e?.phoneNumber,
        e?.whatsappNumber,
        e?.status,
        e?.createdAt
      ]);

  @override
  bool isValidKey(Object? o) => o is ContactDetailsRecord;
}
