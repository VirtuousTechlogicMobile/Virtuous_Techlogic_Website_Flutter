import 'package:flutter/material.dart';

import '/button_component/get_in_touch_button_comp/get_in_touch_button_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'individual_case_study_comp_widget.dart'
    show IndividualCaseStudyCompWidget;

class IndividualCaseStudyCompModel
    extends FlutterFlowModel<IndividualCaseStudyCompWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for getInTouchButtonComp component.
  late GetInTouchButtonCompModel getInTouchButtonCompModel;

  @override
  void initState(BuildContext context) {
    getInTouchButtonCompModel =
        createModel(context, () => GetInTouchButtonCompModel());
  }

  @override
  void dispose() {
    getInTouchButtonCompModel.dispose();
  }
}
