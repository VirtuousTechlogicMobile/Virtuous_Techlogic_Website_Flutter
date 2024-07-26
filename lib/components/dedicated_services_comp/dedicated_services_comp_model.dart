import '/components/common_rich_text_comp/common_rich_text_comp_widget.dart';
import '/components/hiring_comp/hiring_comp_widget.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'dedicated_services_comp_widget.dart' show DedicatedServicesCompWidget;
import 'package:flutter/material.dart';

class DedicatedServicesCompModel
    extends FlutterFlowModel<DedicatedServicesCompWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for commonRichTextComp component.
  late CommonRichTextCompModel commonRichTextCompModel;
  // Model for hiringComp component.
  late HiringCompModel hiringCompModel1;
  // Model for hiringComp component.
  late HiringCompModel hiringCompModel2;
  // Model for hiringComp component.
  late HiringCompModel hiringCompModel3;

  @override
  void initState(BuildContext context) {
    commonRichTextCompModel =
        createModel(context, () => CommonRichTextCompModel());
    hiringCompModel1 = createModel(context, () => HiringCompModel());
    hiringCompModel2 = createModel(context, () => HiringCompModel());
    hiringCompModel3 = createModel(context, () => HiringCompModel());
  }

  @override
  void dispose() {
    commonRichTextCompModel.dispose();
    hiringCompModel1.dispose();
    hiringCompModel2.dispose();
    hiringCompModel3.dispose();
  }
}
