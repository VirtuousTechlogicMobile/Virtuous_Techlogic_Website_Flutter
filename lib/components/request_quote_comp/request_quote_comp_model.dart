import 'package:flutter/material.dart';

import '/components/common_rich_text_comp/common_rich_text_comp_widget.dart';
import '/components/get_in_touch_component/get_in_touch_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'request_quote_comp_widget.dart' show RequestQuoteCompWidget;

class RequestQuoteCompModel extends FlutterFlowModel<RequestQuoteCompWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for commonRichTextComp component.
  late CommonRichTextCompModel commonRichTextCompModel;
  // Model for getInTouchComponent component.
  late GetInTouchComponentModel getInTouchComponentModel1;
  // Model for getInTouchComponent component.
  late GetInTouchComponentModel getInTouchComponentModel2;

  @override
  void initState(BuildContext context) {
    commonRichTextCompModel =
        createModel(context, () => CommonRichTextCompModel());
    getInTouchComponentModel1 =
        createModel(context, () => GetInTouchComponentModel());
    getInTouchComponentModel2 =
        createModel(context, () => GetInTouchComponentModel());
  }

  @override
  void dispose() {
    commonRichTextCompModel.dispose();
    getInTouchComponentModel1.dispose();
    getInTouchComponentModel2.dispose();
  }
}
