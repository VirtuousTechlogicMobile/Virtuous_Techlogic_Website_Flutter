import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/backend.dart';

String individualPageRedirect(
  DocumentReference blogReference,
  String baseUrl,
) {
// Construct the URL with the blogReference ID
  final String url = '$baseUrl/${blogReference?.id}';

  // Print or return the URL
  print("Generated URL: $url");
  return url;
}
