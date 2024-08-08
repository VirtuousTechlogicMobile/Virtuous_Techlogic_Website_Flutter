import '/components/case_study_comp/case_study_comp_widget.dart';
import '/components/desktop_header_comp/desktop_header_comp_widget.dart';
import '/components/footer_comp/footer_comp_widget.dart';
import '/components/mobile_header_comp/mobile_header_comp_widget.dart';
import '/components/request_quote_comp/request_quote_comp_widget.dart';
import '/components/sidebar_comp/sidebar_comp_widget.dart';
import '/components/tablet_header_comp/tablet_header_comp_widget.dart';
import '/components/whatsap_sticky_comp/whatsap_sticky_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'case_studies_page_widget.dart' show CaseStudiesPageWidget;
import 'package:flutter/material.dart';

class CaseStudiesPageModel extends FlutterFlowModel<CaseStudiesPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for mobileHeaderComp component.
  late MobileHeaderCompModel mobileHeaderCompModel;
  // Model for caseStudyComp component.
  late CaseStudyCompModel caseStudyCompModel1;
  // Model for requestQuoteComp component.
  late RequestQuoteCompModel requestQuoteCompModel1;
  // Model for footerComp component.
  late FooterCompModel footerCompModel1;
  // Model for tabletHeaderComp component.
  late TabletHeaderCompModel tabletHeaderCompModel;
  // Model for caseStudyComp component.
  late CaseStudyCompModel caseStudyCompModel2;
  // Model for requestQuoteComp component.
  late RequestQuoteCompModel requestQuoteCompModel2;
  // Model for footerComp component.
  late FooterCompModel footerCompModel2;
  // Model for desktopHeaderComp component.
  late DesktopHeaderCompModel desktopHeaderCompModel;
  // Model for caseStudyComp component.
  late CaseStudyCompModel caseStudyCompModel3;
  // Model for requestQuoteComp component.
  late RequestQuoteCompModel requestQuoteCompModel3;
  // Model for footerComp component.
  late FooterCompModel footerCompModel3;
  // Model for whatsapStickyComp component.
  late WhatsapStickyCompModel whatsapStickyCompModel;
  // Model for sidebarComp component.
  late SidebarCompModel sidebarCompModel;

  @override
  void initState(BuildContext context) {
    mobileHeaderCompModel = createModel(context, () => MobileHeaderCompModel());
    caseStudyCompModel1 = createModel(context, () => CaseStudyCompModel());
    requestQuoteCompModel1 =
        createModel(context, () => RequestQuoteCompModel());
    footerCompModel1 = createModel(context, () => FooterCompModel());
    tabletHeaderCompModel = createModel(context, () => TabletHeaderCompModel());
    caseStudyCompModel2 = createModel(context, () => CaseStudyCompModel());
    requestQuoteCompModel2 =
        createModel(context, () => RequestQuoteCompModel());
    footerCompModel2 = createModel(context, () => FooterCompModel());
    desktopHeaderCompModel =
        createModel(context, () => DesktopHeaderCompModel());
    caseStudyCompModel3 = createModel(context, () => CaseStudyCompModel());
    requestQuoteCompModel3 =
        createModel(context, () => RequestQuoteCompModel());
    footerCompModel3 = createModel(context, () => FooterCompModel());
    whatsapStickyCompModel =
        createModel(context, () => WhatsapStickyCompModel());
    sidebarCompModel = createModel(context, () => SidebarCompModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mobileHeaderCompModel.dispose();
    caseStudyCompModel1.dispose();
    requestQuoteCompModel1.dispose();
    footerCompModel1.dispose();
    tabletHeaderCompModel.dispose();
    caseStudyCompModel2.dispose();
    requestQuoteCompModel2.dispose();
    footerCompModel2.dispose();
    desktopHeaderCompModel.dispose();
    caseStudyCompModel3.dispose();
    requestQuoteCompModel3.dispose();
    footerCompModel3.dispose();
    whatsapStickyCompModel.dispose();
    sidebarCompModel.dispose();
  }
}
