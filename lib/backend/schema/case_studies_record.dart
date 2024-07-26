import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CaseStudiesRecord extends FirestoreRecord {
  CaseStudiesRecord._(
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

  // "language" field.
  List<String>? _language;
  List<String> get language => _language ?? const [];
  bool hasLanguage() => _language != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "features" field.
  List<String>? _features;
  List<String> get features => _features ?? const [];
  bool hasFeatures() => _features != null;

  // "mobileImages" field.
  List<String>? _mobileImages;
  List<String> get mobileImages => _mobileImages ?? const [];
  bool hasMobileImages() => _mobileImages != null;

  // "tabletImages" field.
  List<String>? _tabletImages;
  List<String> get tabletImages => _tabletImages ?? const [];
  bool hasTabletImages() => _tabletImages != null;

  // "desktopImages" field.
  List<String>? _desktopImages;
  List<String> get desktopImages => _desktopImages ?? const [];
  bool hasDesktopImages() => _desktopImages != null;

  // "descriptionImage" field.
  String? _descriptionImage;
  String get descriptionImage => _descriptionImage ?? '';
  bool hasDescriptionImage() => _descriptionImage != null;

  // "featureImage" field.
  String? _featureImage;
  String get featureImage => _featureImage ?? '';
  bool hasFeatureImage() => _featureImage != null;

  // "introduction" field.
  String? _introduction;
  String get introduction => _introduction ?? '';
  bool hasIntroduction() => _introduction != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "edit_description" field.
  String? _editDescription;
  String get editDescription => _editDescription ?? '';
  bool hasEditDescription() => _editDescription != null;

  void _initializeFields() {
    _image = snapshotData['image'] as String?;
    _title = snapshotData['title'] as String?;
    _language = getDataList(snapshotData['language']);
    _status = snapshotData['status'] as bool?;
    _description = snapshotData['description'] as String?;
    _features = getDataList(snapshotData['features']);
    _mobileImages = getDataList(snapshotData['mobileImages']);
    _tabletImages = getDataList(snapshotData['tabletImages']);
    _desktopImages = getDataList(snapshotData['desktopImages']);
    _descriptionImage = snapshotData['descriptionImage'] as String?;
    _featureImage = snapshotData['featureImage'] as String?;
    _introduction = snapshotData['introduction'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _editDescription = snapshotData['edit_description'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('caseStudies');

  static Stream<CaseStudiesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CaseStudiesRecord.fromSnapshot(s));

  static Future<CaseStudiesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CaseStudiesRecord.fromSnapshot(s));

  static CaseStudiesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CaseStudiesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CaseStudiesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CaseStudiesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CaseStudiesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CaseStudiesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCaseStudiesRecordData({
  String? image,
  String? title,
  bool? status,
  String? description,
  String? descriptionImage,
  String? featureImage,
  String? introduction,
  DateTime? createdAt,
  String? editDescription,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image': image,
      'title': title,
      'status': status,
      'description': description,
      'descriptionImage': descriptionImage,
      'featureImage': featureImage,
      'introduction': introduction,
      'created_at': createdAt,
      'edit_description': editDescription,
    }.withoutNulls,
  );

  return firestoreData;
}

class CaseStudiesRecordDocumentEquality implements Equality<CaseStudiesRecord> {
  const CaseStudiesRecordDocumentEquality();

  @override
  bool equals(CaseStudiesRecord? e1, CaseStudiesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.image == e2?.image &&
        e1?.title == e2?.title &&
        listEquality.equals(e1?.language, e2?.language) &&
        e1?.status == e2?.status &&
        e1?.description == e2?.description &&
        listEquality.equals(e1?.features, e2?.features) &&
        listEquality.equals(e1?.mobileImages, e2?.mobileImages) &&
        listEquality.equals(e1?.tabletImages, e2?.tabletImages) &&
        listEquality.equals(e1?.desktopImages, e2?.desktopImages) &&
        e1?.descriptionImage == e2?.descriptionImage &&
        e1?.featureImage == e2?.featureImage &&
        e1?.introduction == e2?.introduction &&
        e1?.createdAt == e2?.createdAt &&
        e1?.editDescription == e2?.editDescription;
  }

  @override
  int hash(CaseStudiesRecord? e) => const ListEquality().hash([
        e?.image,
        e?.title,
        e?.language,
        e?.status,
        e?.description,
        e?.features,
        e?.mobileImages,
        e?.tabletImages,
        e?.desktopImages,
        e?.descriptionImage,
        e?.featureImage,
        e?.introduction,
        e?.createdAt,
        e?.editDescription
      ]);

  @override
  bool isValidKey(Object? o) => o is CaseStudiesRecord;
}
