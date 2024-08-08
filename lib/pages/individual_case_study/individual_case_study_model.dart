import 'package:flutter/material.dart';

import '/components/desktop_header_comp/desktop_header_comp_widget.dart';
import '/components/footer_comp/footer_comp_widget.dart';
import '/components/individual_case_study_comp/individual_case_study_comp_widget.dart';
import '/components/mobile_header_comp/mobile_header_comp_widget.dart';
import '/components/screen_shot_component/screen_shot_component_widget.dart';
import '/components/sidebar_comp/sidebar_comp_widget.dart';
import '/components/tablet_header_comp/tablet_header_comp_widget.dart';
import '/components/whatsap_sticky_comp/whatsap_sticky_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'individual_case_study_widget.dart' show IndividualCaseStudyWidget;

class IndividualCaseStudyModel
    extends FlutterFlowModel<IndividualCaseStudyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for mobileHeaderComp component.
  late MobileHeaderCompModel mobileHeaderCompModel;
  // Model for individualCaseStudyComp component.
  late IndividualCaseStudyCompModel individualCaseStudyCompModel1;
  // Model for screenShotComponent component.
  late ScreenShotComponentModel screenShotComponentModel1;
  // Model for footerComp component.
  late FooterCompModel footerCompModel1;
  // Model for tabletHeaderComp component.
  late TabletHeaderCompModel tabletHeaderCompModel;
  // Model for individualCaseStudyComp component.
  late IndividualCaseStudyCompModel individualCaseStudyCompModel2;
  // Model for screenShotComponent component.
  late ScreenShotComponentModel screenShotComponentModel2;
  // Model for footerComp component.
  late FooterCompModel footerCompModel2;
  // Model for desktopHeaderComp component.
  late DesktopHeaderCompModel desktopHeaderCompModel;
  // Model for individualCaseStudyComp component.
  late IndividualCaseStudyCompModel individualCaseStudyCompModel3;
  // Model for screenShotComponent component.
  late ScreenShotComponentModel screenShotComponentModel3;
  // Model for footerComp component.
  late FooterCompModel footerCompModel3;
  // Model for whatsapStickyComp component.
  late WhatsapStickyCompModel whatsapStickyCompModel;
  // Model for sidebarComp component.
  late SidebarCompModel sidebarCompModel;

  @override
  void initState(BuildContext context) {
    mobileHeaderCompModel = createModel(context, () => MobileHeaderCompModel());
    individualCaseStudyCompModel1 =
        createModel(context, () => IndividualCaseStudyCompModel());
    screenShotComponentModel1 =
        createModel(context, () => ScreenShotComponentModel());
    footerCompModel1 = createModel(context, () => FooterCompModel());
    tabletHeaderCompModel = createModel(context, () => TabletHeaderCompModel());
    individualCaseStudyCompModel2 =
        createModel(context, () => IndividualCaseStudyCompModel());
    screenShotComponentModel2 =
        createModel(context, () => ScreenShotComponentModel());
    footerCompModel2 = createModel(context, () => FooterCompModel());
    desktopHeaderCompModel =
        createModel(context, () => DesktopHeaderCompModel());
    individualCaseStudyCompModel3 =
        createModel(context, () => IndividualCaseStudyCompModel());
    screenShotComponentModel3 =
        createModel(context, () => ScreenShotComponentModel());
    footerCompModel3 = createModel(context, () => FooterCompModel());
    whatsapStickyCompModel =
        createModel(context, () => WhatsapStickyCompModel());
    sidebarCompModel = createModel(context, () => SidebarCompModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mobileHeaderCompModel.dispose();
    individualCaseStudyCompModel1.dispose();
    screenShotComponentModel1.dispose();
    footerCompModel1.dispose();
    tabletHeaderCompModel.dispose();
    individualCaseStudyCompModel2.dispose();
    screenShotComponentModel2.dispose();
    footerCompModel2.dispose();
    desktopHeaderCompModel.dispose();
    individualCaseStudyCompModel3.dispose();
    screenShotComponentModel3.dispose();
    footerCompModel3.dispose();
    whatsapStickyCompModel.dispose();
    sidebarCompModel.dispose();
  }
}
