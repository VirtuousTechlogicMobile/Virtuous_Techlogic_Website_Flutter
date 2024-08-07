import 'package:flutter/material.dart';

import '/components/common_rich_text_comp/common_rich_text_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'our_culture_comp_widget.dart' show OurCultureCompWidget;

class OurCultureCompModel extends FlutterFlowModel<OurCultureCompWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for commonRichTextComp component.
  late CommonRichTextCompModel commonRichTextCompModel;

  @override
  void initState(BuildContext context) {
    commonRichTextCompModel =
        createModel(context, () => CommonRichTextCompModel());
  }

  @override
  void dispose() {
    commonRichTextCompModel.dispose();
  }
}
