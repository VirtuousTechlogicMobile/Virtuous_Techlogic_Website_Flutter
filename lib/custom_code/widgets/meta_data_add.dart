import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:meta_seo/meta_seo.dart';

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
    metaData(widget.title);
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
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: const Text('MetaDataAdd Widget'), // Placeholder widget content
    );
  }
}
