import 'package:flutter/material.dart';

import '/button_component/get_in_touch_button_comp/get_in_touch_button_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'blog_comp_widget.dart' show BlogCompWidget;

class BlogCompModel extends FlutterFlowModel<BlogCompWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for getInTouchButtonComp component.
  late GetInTouchButtonCompModel getInTouchButtonCompModel1;
  // Model for getInTouchButtonComp component.
  late GetInTouchButtonCompModel getInTouchButtonCompModel2;

  @override
  void initState(BuildContext context) {
    getInTouchButtonCompModel1 =
        createModel(context, () => GetInTouchButtonCompModel());
    getInTouchButtonCompModel2 =
        createModel(context, () => GetInTouchButtonCompModel());
  }

  @override
  void dispose() {
    getInTouchButtonCompModel1.dispose();
    getInTouchButtonCompModel2.dispose();
  }
}
