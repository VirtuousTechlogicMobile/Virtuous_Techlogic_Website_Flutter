// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:meta_seo/meta_seo.dart';
import 'package:flutter/foundation.dart';

class MetaDataAdd extends StatefulWidget {
  const MetaDataAdd({
    super.key,
    this.width,
    this.height,
    required this.title,
  });

  final double? width;
  final double? height;
  final String title;

  @override
  State<MetaDataAdd> createState() => _MetaDataAddState();
}

class _MetaDataAddState extends State<MetaDataAdd> {
  @override
  void initState() {
    super.initState();
    if (widget.title != null) {
      metaData(widget.title!);
    }
  }

  void metaData(String title) async {
    if (kIsWeb) {
      MetaSEO().config();
      MetaSEO meta = MetaSEO();
      meta.ogTitle(ogTitle: title);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: Text('MetaDataAdd Widget'), // Placeholder widget content
    );
  }
}
