import 'package:flutter/material.dart';

import '/components/desktop_header_comp/desktop_header_comp_widget.dart';
import '/components/footer_comp/footer_comp_widget.dart';
import '/components/mobile_header_comp/mobile_header_comp_widget.dart';
import '/components/privacy_policytextcomp/privacy_policytextcomp_widget.dart';
import '/components/sidebar_comp/sidebar_comp_widget.dart';
import '/components/tablet_header_comp/tablet_header_comp_widget.dart';
import '/components/whatsap_sticky_comp/whatsap_sticky_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'privacy_policy_widget.dart' show PrivacyPolicyWidget;

class PrivacyPolicyModel extends FlutterFlowModel<PrivacyPolicyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for mobileHeaderComp component.
  late MobileHeaderCompModel mobileHeaderCompModel;
  // Model for PrivacyPolicytextcomp component.
  late PrivacyPolicytextcompModel privacyPolicytextcompModel1;
  // Model for footerComp component.
  late FooterCompModel footerCompModel1;
  // Model for tabletHeaderComp component.
  late TabletHeaderCompModel tabletHeaderCompModel;
  // Model for PrivacyPolicytextcomp component.
  late PrivacyPolicytextcompModel privacyPolicytextcompModel2;
  // Model for footerComp component.
  late FooterCompModel footerCompModel2;
  // Model for desktopHeaderComp component.
  late DesktopHeaderCompModel desktopHeaderCompModel;
  // Model for PrivacyPolicytextcomp component.
  late PrivacyPolicytextcompModel privacyPolicytextcompModel3;
  // Model for footerComp component.
  late FooterCompModel footerCompModel3;
  // Model for whatsapStickyComp component.
  late WhatsapStickyCompModel whatsapStickyCompModel;
  // Model for sidebarComp component.
  late SidebarCompModel sidebarCompModel;

  @override
  void initState(BuildContext context) {
    mobileHeaderCompModel = createModel(context, () => MobileHeaderCompModel());
    privacyPolicytextcompModel1 =
        createModel(context, () => PrivacyPolicytextcompModel());
    footerCompModel1 = createModel(context, () => FooterCompModel());
    tabletHeaderCompModel = createModel(context, () => TabletHeaderCompModel());
    privacyPolicytextcompModel2 =
        createModel(context, () => PrivacyPolicytextcompModel());
    footerCompModel2 = createModel(context, () => FooterCompModel());
    desktopHeaderCompModel =
        createModel(context, () => DesktopHeaderCompModel());
    privacyPolicytextcompModel3 =
        createModel(context, () => PrivacyPolicytextcompModel());
    footerCompModel3 = createModel(context, () => FooterCompModel());
    whatsapStickyCompModel =
        createModel(context, () => WhatsapStickyCompModel());
    sidebarCompModel = createModel(context, () => SidebarCompModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mobileHeaderCompModel.dispose();
    privacyPolicytextcompModel1.dispose();
    footerCompModel1.dispose();
    tabletHeaderCompModel.dispose();
    privacyPolicytextcompModel2.dispose();
    footerCompModel2.dispose();
    desktopHeaderCompModel.dispose();
    privacyPolicytextcompModel3.dispose();
    footerCompModel3.dispose();
    whatsapStickyCompModel.dispose();
    sidebarCompModel.dispose();
  }
}
