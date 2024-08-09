import 'package:flutter/material.dart';
import 'package:virtuous_techlogic_website/pages/disclaimer_page/disclaimer_page_widget.dart';

import '../../components/disclaimertextcomp/Disclaimertextcomp_model.dart';
import '/components/desktop_header_comp/desktop_header_comp_widget.dart';
import '/components/footer_comp/footer_comp_widget.dart';
import '/components/mobile_header_comp/mobile_header_comp_widget.dart';
import '/components/sidebar_comp/sidebar_comp_widget.dart';
import '/components/tablet_header_comp/tablet_header_comp_widget.dart';
import '/components/whatsap_sticky_comp/whatsap_sticky_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DisclaimerPageModel extends FlutterFlowModel<DisclaimerPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for mobileHeaderComp component.
  late MobileHeaderCompModel mobileHeaderCompModel;
  // Model for Disclaimertextcomp component.
  late DisclaimertextcompModel DisclaimertextcompModel1;
  // Model for footerComp component.
  late FooterCompModel footerCompModel1;
  // Model for tabletHeaderComp component.
  late TabletHeaderCompModel tabletHeaderCompModel;
  // Model for Disclaimertextcomp component.
  late DisclaimertextcompModel DisclaimertextcompModel2;
  // Model for footerComp component.
  late FooterCompModel footerCompModel2;
  // Model for desktopHeaderComp component.
  late DesktopHeaderCompModel desktopHeaderCompModel;
  // Model for Disclaimertextcomp component.
  late DisclaimertextcompModel DisclaimertextcompModel3;
  // Model for footerComp component.
  late FooterCompModel footerCompModel3;
  // Model for whatsapStickyComp component.
  late WhatsapStickyCompModel whatsapStickyCompModel;
  // Model for sidebarComp component.
  late SidebarCompModel sidebarCompModel;

  @override
  void initState(BuildContext context) {
    mobileHeaderCompModel = createModel(context, () => MobileHeaderCompModel());
    DisclaimertextcompModel1 =
        createModel(context, () => DisclaimertextcompModel());
    footerCompModel1 = createModel(context, () => FooterCompModel());
    tabletHeaderCompModel = createModel(context, () => TabletHeaderCompModel());
    DisclaimertextcompModel2 =
        createModel(context, () => DisclaimertextcompModel());
    footerCompModel2 = createModel(context, () => FooterCompModel());
    desktopHeaderCompModel =
        createModel(context, () => DesktopHeaderCompModel());
    DisclaimertextcompModel3 =
        createModel(context, () => DisclaimertextcompModel());
    footerCompModel3 = createModel(context, () => FooterCompModel());
    whatsapStickyCompModel =
        createModel(context, () => WhatsapStickyCompModel());
    sidebarCompModel = createModel(context, () => SidebarCompModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mobileHeaderCompModel.dispose();
    DisclaimertextcompModel1.dispose();
    footerCompModel1.dispose();
    tabletHeaderCompModel.dispose();
    DisclaimertextcompModel2.dispose();
    footerCompModel2.dispose();
    desktopHeaderCompModel.dispose();
    DisclaimertextcompModel3.dispose();
    footerCompModel3.dispose();
    whatsapStickyCompModel.dispose();
    sidebarCompModel.dispose();
  }
}
