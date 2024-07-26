import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WhyChooseUsRecord extends FirestoreRecord {
  WhyChooseUsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "rating_text" field.
  String? _ratingText;
  String get ratingText => _ratingText ?? '';
  bool hasRatingText() => _ratingText != null;

  // "ratings" field.
  int? _ratings;
  int get ratings => _ratings ?? 0;
  bool hasRatings() => _ratings != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "project_complete" field.
  int? _projectComplete;
  int get projectComplete => _projectComplete ?? 0;
  bool hasProjectComplete() => _projectComplete != null;

  // "satisfied_clients" field.
  int? _satisfiedClients;
  int get satisfiedClients => _satisfiedClients ?? 0;
  bool hasSatisfiedClients() => _satisfiedClients != null;

  // "year_of_expertise" field.
  int? _yearOfExpertise;
  int get yearOfExpertise => _yearOfExpertise ?? 0;
  bool hasYearOfExpertise() => _yearOfExpertise != null;

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
    _ratingText = snapshotData['rating_text'] as String?;
    _ratings = castToType<int>(snapshotData['ratings']);
    _description = snapshotData['description'] as String?;
    _projectComplete = castToType<int>(snapshotData['project_complete']);
    _satisfiedClients = castToType<int>(snapshotData['satisfied_clients']);
    _yearOfExpertise = castToType<int>(snapshotData['year_of_expertise']);
    _status = snapshotData['status'] as bool?;
    _createdAt = snapshotData['created_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('whyChooseUs');

  static Stream<WhyChooseUsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WhyChooseUsRecord.fromSnapshot(s));

  static Future<WhyChooseUsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WhyChooseUsRecord.fromSnapshot(s));

  static WhyChooseUsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WhyChooseUsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WhyChooseUsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WhyChooseUsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WhyChooseUsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WhyChooseUsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWhyChooseUsRecordData({
  String? image,
  String? ratingText,
  int? ratings,
  String? description,
  int? projectComplete,
  int? satisfiedClients,
  int? yearOfExpertise,
  bool? status,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image': image,
      'rating_text': ratingText,
      'ratings': ratings,
      'description': description,
      'project_complete': projectComplete,
      'satisfied_clients': satisfiedClients,
      'year_of_expertise': yearOfExpertise,
      'status': status,
      'created_at': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class WhyChooseUsRecordDocumentEquality implements Equality<WhyChooseUsRecord> {
  const WhyChooseUsRecordDocumentEquality();

  @override
  bool equals(WhyChooseUsRecord? e1, WhyChooseUsRecord? e2) {
    return e1?.image == e2?.image &&
        e1?.ratingText == e2?.ratingText &&
        e1?.ratings == e2?.ratings &&
        e1?.description == e2?.description &&
        e1?.projectComplete == e2?.projectComplete &&
        e1?.satisfiedClients == e2?.satisfiedClients &&
        e1?.yearOfExpertise == e2?.yearOfExpertise &&
        e1?.status == e2?.status &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(WhyChooseUsRecord? e) => const ListEquality().hash([
        e?.image,
        e?.ratingText,
        e?.ratings,
        e?.description,
        e?.projectComplete,
        e?.satisfiedClients,
        e?.yearOfExpertise,
        e?.status,
        e?.createdAt
      ]);

  @override
  bool isValidKey(Object? o) => o is WhyChooseUsRecord;
}
