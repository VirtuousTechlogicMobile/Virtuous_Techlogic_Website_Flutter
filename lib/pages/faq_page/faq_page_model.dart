import '/backend/backend.dart';
import '/components/desktop_header_comp/desktop_header_comp_widget.dart';
import '/components/faq_comp/faq_comp_widget.dart';
import '/components/faq_textcomp/faq_textcomp_widget.dart';
import '/components/footer_comp/footer_comp_widget.dart';
import '/components/mobile_header_comp/mobile_header_comp_widget.dart';
import '/components/sidebar_comp/sidebar_comp_widget.dart';
import '/components/tablet_header_comp/tablet_header_comp_widget.dart';
import '/components/whatsap_sticky_comp/whatsap_sticky_comp_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'faq_page_widget.dart' show FaqPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FaqPageModel extends FlutterFlowModel<FaqPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for mobileHeaderComp component.
  late MobileHeaderCompModel mobileHeaderCompModel;
  // Model for faqComp component.
  late FaqCompModel faqCompModel1;
  // Model for footerComp component.
  late FooterCompModel footerCompModel1;
  // Model for whatsapStickyComp component.
  late WhatsapStickyCompModel whatsapStickyCompModel1;
  // Model for tabletHeaderComp component.
  late TabletHeaderCompModel tabletHeaderCompModel;
  // Model for faqComp component.
  late FaqCompModel faqCompModel2;
  // Model for footerComp component.
  late FooterCompModel footerCompModel2;
  // Model for whatsapStickyComp component.
  late WhatsapStickyCompModel whatsapStickyCompModel2;
  // Model for desktopHeaderComp component.
  late DesktopHeaderCompModel desktopHeaderCompModel;
  // Model for faqComp component.
  late FaqCompModel faqCompModel3;
  // Model for footerComp component.
  late FooterCompModel footerCompModel3;
  // Model for whatsapStickyComp component.
  late WhatsapStickyCompModel whatsapStickyCompModel3;
  // Model for sidebarComp component.
  late SidebarCompModel sidebarCompModel;

  @override
  void initState(BuildContext context) {
    mobileHeaderCompModel = createModel(context, () => MobileHeaderCompModel());
    faqCompModel1 = createModel(context, () => FaqCompModel());
    footerCompModel1 = createModel(context, () => FooterCompModel());
    whatsapStickyCompModel1 =
        createModel(context, () => WhatsapStickyCompModel());
    tabletHeaderCompModel = createModel(context, () => TabletHeaderCompModel());
    faqCompModel2 = createModel(context, () => FaqCompModel());
    footerCompModel2 = createModel(context, () => FooterCompModel());
    whatsapStickyCompModel2 =
        createModel(context, () => WhatsapStickyCompModel());
    desktopHeaderCompModel =
        createModel(context, () => DesktopHeaderCompModel());
    faqCompModel3 = createModel(context, () => FaqCompModel());
    footerCompModel3 = createModel(context, () => FooterCompModel());
    whatsapStickyCompModel3 =
        createModel(context, () => WhatsapStickyCompModel());
    sidebarCompModel = createModel(context, () => SidebarCompModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mobileHeaderCompModel.dispose();
    faqCompModel1.dispose();
    footerCompModel1.dispose();
    whatsapStickyCompModel1.dispose();
    tabletHeaderCompModel.dispose();
    faqCompModel2.dispose();
    footerCompModel2.dispose();
    whatsapStickyCompModel2.dispose();
    desktopHeaderCompModel.dispose();
    faqCompModel3.dispose();
    footerCompModel3.dispose();
    whatsapStickyCompModel3.dispose();
    sidebarCompModel.dispose();
  }
}
