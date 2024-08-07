import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart';

class CustomerReviewRecord extends FirestoreRecord {
  CustomerReviewRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "review_text" field.
  String? _reviewText;
  String get reviewText => _reviewText ?? '';
  bool hasReviewText() => _reviewText != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "client_name" field.
  String? _clientName;
  String get clientName => _clientName ?? '';
  bool hasClientName() => _clientName != null;

  // "client_designation" field.
  String? _clientDesignation;
  String get clientDesignation => _clientDesignation ?? '';
  bool hasClientDesignation() => _clientDesignation != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _reviewText = snapshotData['review_text'] as String?;
    _image = snapshotData['image'] as String?;
    _clientName = snapshotData['client_name'] as String?;
    _clientDesignation = snapshotData['client_designation'] as String?;
    _status = snapshotData['status'] as bool?;
    _createdAt = snapshotData['created_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('customerReview');

  static Stream<CustomerReviewRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CustomerReviewRecord.fromSnapshot(s));

  static Future<CustomerReviewRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CustomerReviewRecord.fromSnapshot(s));

  static CustomerReviewRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CustomerReviewRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CustomerReviewRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CustomerReviewRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CustomerReviewRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CustomerReviewRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCustomerReviewRecordData({
  String? reviewText,
  String? image,
  String? clientName,
  String? clientDesignation,
  bool? status,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'review_text': reviewText,
      'image': image,
      'client_name': clientName,
      'client_designation': clientDesignation,
      'status': status,
      'created_at': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class CustomerReviewRecordDocumentEquality
    implements Equality<CustomerReviewRecord> {
  const CustomerReviewRecordDocumentEquality();

  @override
  bool equals(CustomerReviewRecord? e1, CustomerReviewRecord? e2) {
    return e1?.reviewText == e2?.reviewText &&
        e1?.image == e2?.image &&
        e1?.clientName == e2?.clientName &&
        e1?.clientDesignation == e2?.clientDesignation &&
        e1?.status == e2?.status &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(CustomerReviewRecord? e) => const ListEquality().hash([
        e?.reviewText,
        e?.image,
        e?.clientName,
        e?.clientDesignation,
        e?.status,
        e?.createdAt
      ]);

  @override
  bool isValidKey(Object? o) => o is CustomerReviewRecord;
}
