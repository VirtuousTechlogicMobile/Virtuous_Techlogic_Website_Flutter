import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:vsc_quill_delta_to_html/vsc_quill_delta_to_html.dart';

import '/flutter_flow/flutter_flow_util.dart';
import '../../button_component/get_in_touch_button_comp/get_in_touch_button_comp_widget.dart';

class DisplayQuillToHtml extends StatefulWidget {
  const DisplayQuillToHtml({
    super.key,
    this.width,
    this.height,
    required this.defaultJsonData,
    required this.isMaxCharacterAllowOrNot,
    this.characterSetInHtmlView,
    this.onPressViewMoreBtn,
    this.showFullText,
  });

  final double? width;
  final double? height;
  final String defaultJsonData;
  final bool isMaxCharacterAllowOrNot;
  final int? characterSetInHtmlView;
  final Future Function()? onPressViewMoreBtn;
  final bool? showFullText;

  @override
  State<DisplayQuillToHtml> createState() => _DisplayQuillToHtmlState();
}

class _DisplayQuillToHtmlState extends State<DisplayQuillToHtml> {
  late final QuillController quillController;

  @override
  void initState() {
    super.initState();

    if (widget.defaultJsonData.isNotEmpty) {
      List decodeJson = json.decode(widget.defaultJsonData);
      quillController = QuillController(
        document: Document.fromJson(decodeJson),
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
    quillController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _HtmlViewer(
      quillController: quillController,
      isMaxCharacterAllowOrNot: widget.isMaxCharacterAllowOrNot,
      characterSetInHtmlView: widget.characterSetInHtmlView,
      onPressViewMoreBtn: widget.onPressViewMoreBtn,
      showFullText: widget.showFullText,
    );
  }
}

class _HtmlViewer extends StatefulWidget {
  final bool isMaxCharacterAllowOrNot;
  final int? characterSetInHtmlView;
  final Future Function()? onPressViewMoreBtn;
  final bool? showFullText;

  const _HtmlViewer({
    super.key,
    required this.quillController,
    required this.isMaxCharacterAllowOrNot,
    this.characterSetInHtmlView,
    this.onPressViewMoreBtn,
    this.showFullText,
  });

  final QuillController quillController;

  @override
  State<_HtmlViewer> createState() => _HtmlViewerState();
}

class _HtmlViewerState extends State<_HtmlViewer> {
  String _html = '';
  bool _previewMode = true;
  bool _isPreviewable = false;
  bool showFullText = false;
  @override
  void initState() {
    super.initState();
    widget.quillController.addListener(_onDocumentUpdated);
    _onDocumentUpdated();
    _isPreviewable = kIsWeb || Platform.isAndroid || Platform.isIOS;
    _previewMode = _isPreviewable;
    showFullText = widget.showFullText ?? false;
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
    int characterLimit = widget.characterSetInHtmlView ?? 400;

    if (widget.isMaxCharacterAllowOrNot == true) {
      // Limit the displayed text to 400 characters
      final truncatedHtml = _html.substring(0, 400);
      _html = Html(
            data: '<div>$truncatedHtml...</div>',
          ).data ??
          '';
    } else {
      if (widget.showFullText == true &&
          widget.characterSetInHtmlView == null) {
        _showFullHtmlContent();
      } else {
        final limit =
            characterLimit < _html.length ? characterLimit : _html.length;
        final truncatedHtml =
            _html.length > limit ? _html.substring(0, limit) : _html;
        _html = '''
      <div>
        $truncatedHtml${_html.length > limit ? '...' : ''}
      </div>
    ''';
      }
    }

    setState(() {});
  }

  void _showFullHtmlContent() {
    setState(() {
      showFullText = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final bool shouldShowViewMoreButton = widget.characterSetInHtmlView != null
        ? _html.length >= 450
        : false; // Show button only if content length >= 450

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: LayoutBuilder(builder: (context, constraints) {
            Widget viewer;
            if (_previewMode) {
              if (_isPreviewable) {
                viewer = Html(
                  data: '''
                    <html lang="en">
                      <body style="
                        font-family: Poppins;
                        font-style: normal;
                        font-size: 16px;
                        font-weight: normal;
                        letter-spacing: 2px;
                        line-height: 1.2;
                        color: #676767;
                        margin: 0;  /* Remove margin */
                        padding: 0; /* Remove padding */
                      ">
                         $_html
                      </body>
                    </html>
                  ''',
                  onLinkTap: (url, _, ___) {
                    if (url == '#readMore') {
                      _showFullHtmlContent();
                      if (widget.onPressViewMoreBtn != null) {
                        widget.onPressViewMoreBtn!();
                      }
                    } else if (url != null) {
                      launchURL(url);
                    }
                  },
                );
              } else {
                viewer = const Text(
                  'No HTML preview is available for this platform. Try running for web.',
                );
              }
            } else {
              viewer = SingleChildScrollView(
                child: Html(
                  data: _html,
                ),
              );
            }

            return viewer;
          }),
        ),
        if (shouldShowViewMoreButton)
          GetInTouchButtonCompWidget(
            buttonName: 'View more',
            showIcon: false,
            buttonAction: () async {
              _showFullHtmlContent();
              if (widget.onPressViewMoreBtn != null) {
                widget.onPressViewMoreBtn!();
              }
            },
          ),
      ],
    );
  }
}
