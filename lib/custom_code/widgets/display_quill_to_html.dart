// Automatic FlutterFlow imports
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:vsc_quill_delta_to_html/vsc_quill_delta_to_html.dart';

import '/flutter_flow/flutter_flow_util.dart';

class DisplayQuillToHtml extends StatefulWidget {
  const DisplayQuillToHtml({
    super.key,
    this.width,
    this.height,
    required this.defaultJsonData,
    required this.isMaxCharacterAllowOrNot,
  });

  final double? width;
  final double? height;
  final String defaultJsonData;
  final bool isMaxCharacterAllowOrNot;

  @override
  State<DisplayQuillToHtml> createState() => _DisplayQuillToHtmlState();
}

class _DisplayQuillToHtmlState extends State<DisplayQuillToHtml> {
  late final quillController;

  @override
  void initState() {
    super.initState();

    if (widget.defaultJsonData != null &&
        (widget.defaultJsonData?.length ?? 0) > 0) {
      List decodeJson = json.decode(widget.defaultJsonData!);
      quillController = QuillController(
        document: Document.fromJson(decodeJson ?? []),
        selection: const TextSelection.collapsed(offset: 0),
      );
    } else {
      quillController = QuillController(
        document: Document.fromJson([
          {'insert': 'Empty Data\n'}
        ]),
        selection: const TextSelection.collapsed(offset: 0),
      );
    }
  }

  @override
  void dispose() {
    super.dispose();
    quillController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _HtmlViewer(
        quillController: quillController,
        isMaxCharacterAllowOrNot: widget.isMaxCharacterAllowOrNot);
  }
}

class _HtmlViewer extends StatefulWidget {
  final bool isMaxCharacterAllowOrNot;
  const _HtmlViewer(
      {Key? key,
      required this.quillController,
      required this.isMaxCharacterAllowOrNot})
      : super(key: key);

  final QuillController quillController;

  @override
  State<_HtmlViewer> createState() => _HtmlViewerState();
}

class _HtmlViewerState extends State<_HtmlViewer> {
  String _html = '';
  bool _previewMode = true;
  bool _isPreviewable = false;

  @override
  void initState() {
    super.initState();
    widget.quillController.addListener(_onDocumentUpdated);
    _onDocumentUpdated();
    _isPreviewable = kIsWeb || Platform.isAndroid || Platform.isIOS;
    _previewMode = _isPreviewable;
  }

  void _onDocumentUpdated() {
    try {
      _onDocumentUpdatedOrThrow();
    } catch (e, st) {
      print('Error converting: $e\n$st');
      rethrow;
    }
  }

  void _onDocumentUpdatedOrThrow() {
    final deltaJson = widget.quillController.document.toDelta().toJson();
    final QuillDeltaToHtmlConverter converter = QuillDeltaToHtmlConverter(
      List.castFrom(deltaJson),
      ConverterOptions.forEmail(),
    );

    _html = converter.convert();

    if (widget.isMaxCharacterAllowOrNot == true) {
      // Limit the displayed text to 400 characters
      final truncatedHtml = _html.substring(0, 400);
      _html = Html(
            data: '<div>$truncatedHtml...</div>',
          ).data ??
          '';
    } else {
      _html = '<div>$_html</div>';
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        LayoutBuilder(builder: (context, constraints) {
          Widget viewer;
          if (_previewMode) {
            if (_isPreviewable) {
              viewer = Html(
                data:
                    '<html lang="en"><body style="font-family:Poppins;font-style: normal;font-size:16px; font-weight: normal;letter-spacing: 2px;line-height: 1.2;">$_html</body></html>',
                onLinkTap: (url, _, ___) => launchURL(url!),
              );
            } else {
              viewer = const Text(
                  'No HTML preview is available for this platform. Try running for web.');
            }
          } else {
            viewer = SelectableText(_html);
          }

          return viewer;
        }),
      ],
    );
  }
}
