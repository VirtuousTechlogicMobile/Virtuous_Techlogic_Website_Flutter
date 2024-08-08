import 'package:flutter/material.dart';

import '/button_component/get_in_touch_button_comp/get_in_touch_button_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'legalcom_header_widget.dart' show LegalcomHeaderWidget;

class LegalcomHeaderModel extends FlutterFlowModel<LegalcomHeaderWidget> {
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
