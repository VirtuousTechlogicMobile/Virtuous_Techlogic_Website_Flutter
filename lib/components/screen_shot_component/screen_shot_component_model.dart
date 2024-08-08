import 'package:flutter/material.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'screen_shot_component_widget.dart' show ScreenShotComponentWidget;

class ScreenShotComponentModel
    extends FlutterFlowModel<ScreenShotComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
