import 'package:flutter/material.dart';

import '/components/desktop_header_comp/desktop_header_comp_widget.dart';
import '/components/footer_comp/footer_comp_widget.dart';
import '/components/mobile_header_comp/mobile_header_comp_widget.dart';
import '/components/sidebar_comp/sidebar_comp_widget.dart';
import '/components/sitemap_text_comp/sitemap_text_comp_widget.dart';
import '/components/tablet_header_comp/tablet_header_comp_widget.dart';
import '/components/whatsap_sticky_comp/whatsap_sticky_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'sitemap_page_widget.dart' show SitemapPageWidget;

class SitemapPageModel extends FlutterFlowModel<SitemapPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for mobileHeaderComp component.
  late MobileHeaderCompModel mobileHeaderCompModel;
  // Model for sitemapTextComp component.
  late SitemapTextCompModel sitemapTextCompModel1;
  // Model for footerComp component.
  late FooterCompModel footerCompModel1;
  // Model for whatsapStickyComp component.
  late WhatsapStickyCompModel whatsapStickyCompModel1;
  // Model for tabletHeaderComp component.
  late TabletHeaderCompModel tabletHeaderCompModel;
  // Model for sitemapTextComp component.
  late SitemapTextCompModel sitemapTextCompModel2;
  // Model for footerComp component.
  late FooterCompModel footerCompModel2;
  // Model for whatsapStickyComp component.
  late WhatsapStickyCompModel whatsapStickyCompModel2;
  // Model for desktopHeaderComp component.
  late DesktopHeaderCompModel desktopHeaderCompModel;
  // Model for sitemapTextComp component.
  late SitemapTextCompModel sitemapTextCompModel3;
  // Model for footerComp component.
  late FooterCompModel footerCompModel3;
  // Model for whatsapStickyComp component.
  late WhatsapStickyCompModel whatsapStickyCompModel3;
  // Model for sidebarComp component.
  late SidebarCompModel sidebarCompModel;

  @override
  void initState(BuildContext context) {
    mobileHeaderCompModel = createModel(context, () => MobileHeaderCompModel());
    sitemapTextCompModel1 = createModel(context, () => SitemapTextCompModel());
    footerCompModel1 = createModel(context, () => FooterCompModel());
    whatsapStickyCompModel1 =
        createModel(context, () => WhatsapStickyCompModel());
    tabletHeaderCompModel = createModel(context, () => TabletHeaderCompModel());
    sitemapTextCompModel2 = createModel(context, () => SitemapTextCompModel());
    footerCompModel2 = createModel(context, () => FooterCompModel());
    whatsapStickyCompModel2 =
        createModel(context, () => WhatsapStickyCompModel());
    desktopHeaderCompModel =
        createModel(context, () => DesktopHeaderCompModel());
    sitemapTextCompModel3 = createModel(context, () => SitemapTextCompModel());
    footerCompModel3 = createModel(context, () => FooterCompModel());
    whatsapStickyCompModel3 =
        createModel(context, () => WhatsapStickyCompModel());
    sidebarCompModel = createModel(context, () => SidebarCompModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mobileHeaderCompModel.dispose();
    sitemapTextCompModel1.dispose();
    footerCompModel1.dispose();
    whatsapStickyCompModel1.dispose();
    tabletHeaderCompModel.dispose();
    sitemapTextCompModel2.dispose();
    footerCompModel2.dispose();
    whatsapStickyCompModel2.dispose();
    desktopHeaderCompModel.dispose();
    sitemapTextCompModel3.dispose();
    footerCompModel3.dispose();
    whatsapStickyCompModel3.dispose();
    sidebarCompModel.dispose();
  }
}
