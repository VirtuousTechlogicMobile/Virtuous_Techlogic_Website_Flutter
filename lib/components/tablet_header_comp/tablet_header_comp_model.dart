import '/button_component/get_in_touch_button_comp/get_in_touch_button_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tablet_header_comp_widget.dart' show TabletHeaderCompWidget;
import 'package:flutter/material.dart';

class TabletHeaderCompModel extends FlutterFlowModel<TabletHeaderCompWidget> {
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
