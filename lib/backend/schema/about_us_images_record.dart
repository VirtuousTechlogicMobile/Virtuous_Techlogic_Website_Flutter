import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AboutUsImagesRecord extends FirestoreRecord {
  AboutUsImagesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  // "squareImages" field.
  String? _squareImages;
  String get squareImages => _squareImages ?? '';
  bool hasSquareImages() => _squareImages != null;

  // "landscapeImages1" field.
  String? _landscapeImages1;
  String get landscapeImages1 => _landscapeImages1 ?? '';
  bool hasLandscapeImages1() => _landscapeImages1 != null;

  // "landscapeImages2" field.
  String? _landscapeImages2;
  String get landscapeImages2 => _landscapeImages2 ?? '';
  bool hasLandscapeImages2() => _landscapeImages2 != null;

  // "ractangleImage1" field.
  String? _ractangleImage1;
  String get ractangleImage1 => _ractangleImage1 ?? '';
  bool hasRactangleImage1() => _ractangleImage1 != null;

  // "ractangleImage2" field.
  String? _ractangleImage2;
  String get ractangleImage2 => _ractangleImage2 ?? '';
  bool hasRactangleImage2() => _ractangleImage2 != null;

  void _initializeFields() {
    _status = snapshotData['status'] as bool?;
    _squareImages = snapshotData['squareImages'] as String?;
    _landscapeImages1 = snapshotData['landscapeImages1'] as String?;
    _landscapeImages2 = snapshotData['landscapeImages2'] as String?;
    _ractangleImage1 = snapshotData['ractangleImage1'] as String?;
    _ractangleImage2 = snapshotData['ractangleImage2'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('aboutUsImages');

  static Stream<AboutUsImagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AboutUsImagesRecord.fromSnapshot(s));

  static Future<AboutUsImagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AboutUsImagesRecord.fromSnapshot(s));

  static AboutUsImagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AboutUsImagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AboutUsImagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AboutUsImagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AboutUsImagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AboutUsImagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAboutUsImagesRecordData({
  bool? status,
  String? squareImages,
  String? landscapeImages1,
  String? landscapeImages2,
  String? ractangleImage1,
  String? ractangleImage2,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'status': status,
      'squareImages': squareImages,
      'landscapeImages1': landscapeImages1,
      'landscapeImages2': landscapeImages2,
      'ractangleImage1': ractangleImage1,
      'ractangleImage2': ractangleImage2,
    }.withoutNulls,
  );

  return firestoreData;
}

class AboutUsImagesRecordDocumentEquality
    implements Equality<AboutUsImagesRecord> {
  const AboutUsImagesRecordDocumentEquality();

  @override
  bool equals(AboutUsImagesRecord? e1, AboutUsImagesRecord? e2) {
    return e1?.status == e2?.status &&
        e1?.squareImages == e2?.squareImages &&
        e1?.landscapeImages1 == e2?.landscapeImages1 &&
        e1?.landscapeImages2 == e2?.landscapeImages2 &&
        e1?.ractangleImage1 == e2?.ractangleImage1 &&
        e1?.ractangleImage2 == e2?.ractangleImage2;
  }

  @override
  int hash(AboutUsImagesRecord? e) => const ListEquality().hash([
        e?.status,
        e?.squareImages,
        e?.landscapeImages1,
        e?.landscapeImages2,
        e?.ractangleImage1,
        e?.ractangleImage2
      ]);

  @override
  bool isValidKey(Object? o) => o is AboutUsImagesRecord;
}
