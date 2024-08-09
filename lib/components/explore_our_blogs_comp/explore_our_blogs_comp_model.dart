import 'package:flutter/material.dart';

import '/button_component/get_in_touch_button_comp/get_in_touch_button_comp_widget.dart';
import '/components/common_rich_text_comp/common_rich_text_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'explore_our_blogs_comp_widget.dart' show ExploreOurBlogsCompWidget;

class ExploreOurBlogsCompModel
    extends FlutterFlowModel<ExploreOurBlogsCompWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for commonRichTextComp component.
  late CommonRichTextCompModel commonRichTextCompModel;
  // Model for getInTouchButtonComp component.
  late GetInTouchButtonCompModel getInTouchButtonCompModel;

  @override
  void initState(BuildContext context) {
    commonRichTextCompModel =
        createModel(context, () => CommonRichTextCompModel());
    getInTouchButtonCompModel =
        createModel(context, () => GetInTouchButtonCompModel());
  }

  @override
  void dispose() {
    commonRichTextCompModel.dispose();
    getInTouchButtonCompModel.dispose();
  }
}
