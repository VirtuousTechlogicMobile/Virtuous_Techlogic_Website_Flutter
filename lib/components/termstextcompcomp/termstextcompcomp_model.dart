import '/components/terms_rich_textcomp/terms_rich_textcomp_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'termstextcompcomp_widget.dart' show TermstextcompcompWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TermstextcompcompModel extends FlutterFlowModel<TermstextcompcompWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for termsRichTextcomp component.
  late TermsRichTextcompModel termsRichTextcompModel;

  @override
  void initState(BuildContext context) {
    termsRichTextcompModel =
        createModel(context, () => TermsRichTextcompModel());
  }

  @override
  void dispose() {
    termsRichTextcompModel.dispose();
  }
}
