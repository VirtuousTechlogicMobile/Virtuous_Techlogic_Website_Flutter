import 'package:flutter/material.dart';

import '/button_component/get_in_touch_button_comp/get_in_touch_button_comp_widget.dart';
import '/components/about_experience_comp/about_experience_comp_widget.dart';
import '/components/common_rich_text_comp/common_rich_text_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'why_choose_us_for_home_comp_widget.dart'
    show WhyChooseUsForHomeCompWidget;

class WhyChooseUsForHomeCompModel
    extends FlutterFlowModel<WhyChooseUsForHomeCompWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for commonRichTextComp component.
  late CommonRichTextCompModel commonRichTextCompModel;
  // Model for getInTouchButtonComp component.
  late GetInTouchButtonCompModel getInTouchButtonCompModel;
  // Model for aboutExperienceComp component.
  late AboutExperienceCompModel aboutExperienceCompModel;

  @override
  void initState(BuildContext context) {
    commonRichTextCompModel =
        createModel(context, () => CommonRichTextCompModel());
    getInTouchButtonCompModel =
        createModel(context, () => GetInTouchButtonCompModel());
    aboutExperienceCompModel =
        createModel(context, () => AboutExperienceCompModel());
  }

  @override
  void dispose() {
    commonRichTextCompModel.dispose();
    getInTouchButtonCompModel.dispose();
    aboutExperienceCompModel.dispose();
  }
}
