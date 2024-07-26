import '/backend/backend.dart';
import '/button_component/get_in_touch_button_comp/get_in_touch_button_comp_widget.dart';
import '/components/about_experience_comp/about_experience_comp_widget.dart';
import '/components/common_rich_text_comp/common_rich_text_comp_widget.dart';
import '/components/company_comp/company_comp_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'why_choose_us_for_mobile_comp_widget.dart'
    show WhyChooseUsForMobileCompWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WhyChooseUsForMobileCompModel
    extends FlutterFlowModel<WhyChooseUsForMobileCompWidget> {
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
