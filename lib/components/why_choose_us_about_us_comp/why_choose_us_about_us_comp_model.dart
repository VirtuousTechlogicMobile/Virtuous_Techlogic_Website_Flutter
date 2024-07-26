import '/backend/backend.dart';
import '/components/about_experience_comp/about_experience_comp_widget.dart';
import '/components/common_rich_text_comp/common_rich_text_comp_widget.dart';
import '/components/company_comp/company_comp_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'why_choose_us_about_us_comp_widget.dart'
    show WhyChooseUsAboutUsCompWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WhyChooseUsAboutUsCompModel
    extends FlutterFlowModel<WhyChooseUsAboutUsCompWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for commonRichTextComp component.
  late CommonRichTextCompModel commonRichTextCompModel;
  // Model for aboutExperienceComp component.
  late AboutExperienceCompModel aboutExperienceCompModel;

  @override
  void initState(BuildContext context) {
    commonRichTextCompModel =
        createModel(context, () => CommonRichTextCompModel());
    aboutExperienceCompModel =
        createModel(context, () => AboutExperienceCompModel());
  }

  @override
  void dispose() {
    commonRichTextCompModel.dispose();
    aboutExperienceCompModel.dispose();
  }
}
