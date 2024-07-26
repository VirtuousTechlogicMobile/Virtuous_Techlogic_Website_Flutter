import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BuildProductRecord extends FirestoreRecord {
  BuildProductRecord._(
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

  // "web_link" field.
  String? _webLink;
  String get webLink => _webLink ?? '';
  bool hasWebLink() => _webLink != null;

  // "playstore_link" field.
  String? _playstoreLink;
  String get playstoreLink => _playstoreLink ?? '';
  bool hasPlaystoreLink() => _playstoreLink != null;

  // "appstore_link" field.
  String? _appstoreLink;
  String get appstoreLink => _appstoreLink ?? '';
  bool hasAppstoreLink() => _appstoreLink != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "features" field.
  List<String>? _features;
  List<String> get features => _features ?? const [];
  bool hasFeatures() => _features != null;

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

  void _initializeFields() {
    _image = snapshotData['image'] as String?;
    _title = snapshotData['title'] as String?;
    _webLink = snapshotData['web_link'] as String?;
    _playstoreLink = snapshotData['playstore_link'] as String?;
    _appstoreLink = snapshotData['appstore_link'] as String?;
    _description = snapshotData['description'] as String?;
    _features = getDataList(snapshotData['features']);
    _status = snapshotData['status'] as bool?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _editDescription = snapshotData['edit_description'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('buildProduct');

  static Stream<BuildProductRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BuildProductRecord.fromSnapshot(s));

  static Future<BuildProductRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BuildProductRecord.fromSnapshot(s));

  static BuildProductRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BuildProductRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BuildProductRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BuildProductRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BuildProductRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BuildProductRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBuildProductRecordData({
  String? image,
  String? title,
  String? webLink,
  String? playstoreLink,
  String? appstoreLink,
  String? description,
  bool? status,
  DateTime? createdAt,
  String? editDescription,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image': image,
      'title': title,
      'web_link': webLink,
      'playstore_link': playstoreLink,
      'appstore_link': appstoreLink,
      'description': description,
      'status': status,
      'created_at': createdAt,
      'edit_description': editDescription,
    }.withoutNulls,
  );

  return firestoreData;
}

class BuildProductRecordDocumentEquality
    implements Equality<BuildProductRecord> {
  const BuildProductRecordDocumentEquality();

  @override
  bool equals(BuildProductRecord? e1, BuildProductRecord? e2) {
    const listEquality = ListEquality();
    return e1?.image == e2?.image &&
        e1?.title == e2?.title &&
        e1?.webLink == e2?.webLink &&
        e1?.playstoreLink == e2?.playstoreLink &&
        e1?.appstoreLink == e2?.appstoreLink &&
        e1?.description == e2?.description &&
        listEquality.equals(e1?.features, e2?.features) &&
        e1?.status == e2?.status &&
        e1?.createdAt == e2?.createdAt &&
        e1?.editDescription == e2?.editDescription;
  }

  @override
  int hash(BuildProductRecord? e) => const ListEquality().hash([
        e?.image,
        e?.title,
        e?.webLink,
        e?.playstoreLink,
        e?.appstoreLink,
        e?.description,
        e?.features,
        e?.status,
        e?.createdAt,
        e?.editDescription
      ]);

  @override
  bool isValidKey(Object? o) => o is BuildProductRecord;
}
