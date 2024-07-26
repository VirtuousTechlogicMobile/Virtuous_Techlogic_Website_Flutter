import '/button_component/get_in_touch_button_comp/get_in_touch_button_comp_widget.dart';
import '/button_component/view_live_app_button_comp/view_live_app_button_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'explore_our_product_comp_widget.dart' show ExploreOurProductCompWidget;
import 'package:flutter/material.dart';

class ExploreOurProductCompModel
    extends FlutterFlowModel<ExploreOurProductCompWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for viewLiveAppButtonComp component.
  late ViewLiveAppButtonCompModel viewLiveAppButtonCompModel;
  // Model for getInTouchButtonComp component.
  late GetInTouchButtonCompModel getInTouchButtonCompModel;

  @override
  void initState(BuildContext context) {
    viewLiveAppButtonCompModel =
        createModel(context, () => ViewLiveAppButtonCompModel());
    getInTouchButtonCompModel =
        createModel(context, () => GetInTouchButtonCompModel());
  }

  @override
  void dispose() {
    viewLiveAppButtonCompModel.dispose();
    getInTouchButtonCompModel.dispose();
  }
}
