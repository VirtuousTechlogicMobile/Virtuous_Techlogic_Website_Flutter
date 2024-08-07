import 'package:flutter/material.dart';

import '/components/common_rich_text_comp/common_rich_text_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'our_product_component_comp_copy_widget.dart'
    show OurProductComponentCompCopyWidget;

class OurProductComponentCompCopyModel
    extends FlutterFlowModel<OurProductComponentCompCopyWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Column widget.
  ScrollController? columnController;
  // Model for commonRichTextComp component.
  late CommonRichTextCompModel commonRichTextCompModel;

  @override
  void initState(BuildContext context) {
    columnController = ScrollController();
    commonRichTextCompModel =
        createModel(context, () => CommonRichTextCompModel());
  }

  @override
  void dispose() {
    columnController?.dispose();
    commonRichTextCompModel.dispose();
  }
}
