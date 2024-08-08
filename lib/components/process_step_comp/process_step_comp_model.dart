import '/components/common_rich_text_comp/common_rich_text_comp_widget.dart';
import '/components/seven_steps_comp/seven_steps_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'process_step_comp_widget.dart' show ProcessStepCompWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class ProcessStepCompModel extends FlutterFlowModel<ProcessStepCompWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for commonRichTextComp component.
  late CommonRichTextCompModel commonRichTextCompModel;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // Model for sevenStepsComp component.
  late SevenStepsCompModel sevenStepsCompModel;

  @override
  void initState(BuildContext context) {
    commonRichTextCompModel =
        createModel(context, () => CommonRichTextCompModel());
    sevenStepsCompModel = createModel(context, () => SevenStepsCompModel());
  }

  @override
  void dispose() {
    commonRichTextCompModel.dispose();
    expandableExpandableController.dispose();
    sevenStepsCompModel.dispose();
  }
}
