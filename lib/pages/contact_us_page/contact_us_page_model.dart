import 'package:flutter/material.dart';

import '/components/desktop_header_comp/desktop_header_comp_widget.dart';
import '/components/footer_comp/footer_comp_widget.dart';
import '/components/mobile_header_comp/mobile_header_comp_widget.dart';
import '/components/request_quote_comp/request_quote_comp_widget.dart';
import '/components/schedule_call_comp/schedule_call_comp_widget.dart';
import '/components/sidebar_comp/sidebar_comp_widget.dart';
import '/components/tablet_header_comp/tablet_header_comp_widget.dart';
import '/components/whatsap_sticky_comp/whatsap_sticky_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'contact_us_page_widget.dart' show ContactUsPageWidget;

class ContactUsPageModel extends FlutterFlowModel<ContactUsPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for mobileHeaderComp component.
  late MobileHeaderCompModel mobileHeaderCompModel;
  // Model for requestQuoteComp component.
  late RequestQuoteCompModel requestQuoteCompModel1;
  // Model for scheduleCallComp component.
  late ScheduleCallCompModel scheduleCallCompModel1;
  // Model for footerComp component.
  late FooterCompModel footerCompModel1;
  // Model for tabletHeaderComp component.
  late TabletHeaderCompModel tabletHeaderCompModel;
  // Model for requestQuoteComp component.
  late RequestQuoteCompModel requestQuoteCompModel2;
  // Model for scheduleCallComp component.
  late ScheduleCallCompModel scheduleCallCompModel2;
  // Model for footerComp component.
  late FooterCompModel footerCompModel2;
  // Model for desktopHeaderComp component.
  late DesktopHeaderCompModel desktopHeaderCompModel;
  // Model for requestQuoteComp component.
  late RequestQuoteCompModel requestQuoteCompModel3;
  // Model for scheduleCallComp component.
  late ScheduleCallCompModel scheduleCallCompModel3;
  // Model for footerComp component.
  late FooterCompModel footerCompModel3;
  // Model for whatsapStickyComp component.
  late WhatsapStickyCompModel whatsapStickyCompModel;
  // Model for sidebarComp component.
  late SidebarCompModel sidebarCompModel;

  @override
  void initState(BuildContext context) {
    mobileHeaderCompModel = createModel(context, () => MobileHeaderCompModel());
    requestQuoteCompModel1 =
        createModel(context, () => RequestQuoteCompModel());
    scheduleCallCompModel1 =
        createModel(context, () => ScheduleCallCompModel());
    footerCompModel1 = createModel(context, () => FooterCompModel());
    tabletHeaderCompModel = createModel(context, () => TabletHeaderCompModel());
    requestQuoteCompModel2 =
        createModel(context, () => RequestQuoteCompModel());
    scheduleCallCompModel2 =
        createModel(context, () => ScheduleCallCompModel());
    footerCompModel2 = createModel(context, () => FooterCompModel());
    desktopHeaderCompModel =
        createModel(context, () => DesktopHeaderCompModel());
    requestQuoteCompModel3 =
        createModel(context, () => RequestQuoteCompModel());
    scheduleCallCompModel3 =
        createModel(context, () => ScheduleCallCompModel());
    footerCompModel3 = createModel(context, () => FooterCompModel());
    whatsapStickyCompModel =
        createModel(context, () => WhatsapStickyCompModel());
    sidebarCompModel = createModel(context, () => SidebarCompModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mobileHeaderCompModel.dispose();
    requestQuoteCompModel1.dispose();
    scheduleCallCompModel1.dispose();
    footerCompModel1.dispose();
    tabletHeaderCompModel.dispose();
    requestQuoteCompModel2.dispose();
    scheduleCallCompModel2.dispose();
    footerCompModel2.dispose();
    desktopHeaderCompModel.dispose();
    requestQuoteCompModel3.dispose();
    scheduleCallCompModel3.dispose();
    footerCompModel3.dispose();
    whatsapStickyCompModel.dispose();
    sidebarCompModel.dispose();
  }
}
