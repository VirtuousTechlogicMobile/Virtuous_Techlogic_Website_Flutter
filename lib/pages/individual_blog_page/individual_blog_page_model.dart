import 'package:flutter/material.dart';

import '/backend/backend.dart';
import '/components/desktop_header_comp/desktop_header_comp_widget.dart';
import '/components/footer_comp/footer_comp_widget.dart';
import '/components/individual_blog_comp/individual_blog_comp_widget.dart';
import '/components/mobile_header_comp/mobile_header_comp_widget.dart';
import '/components/related_blog_comp/related_blog_comp_widget.dart';
import '/components/sidebar_comp/sidebar_comp_widget.dart';
import '/components/tablet_header_comp/tablet_header_comp_widget.dart';
import '/components/whatsap_sticky_comp/whatsap_sticky_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'individual_blog_page_widget.dart' show IndividualBlogPageWidget;

class IndividualBlogPageModel
    extends FlutterFlowModel<IndividualBlogPageWidget> {
  ///  Local state fields for this page.

  BlogDetailsRecord? individualBlogDocumnet;

  bool isLoad = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Read Document] action in individualBlogPage widget.
  BlogDetailsRecord? individualBlogResult;
  // Model for mobileHeaderComp component.
  late MobileHeaderCompModel mobileHeaderCompModel;
  // Model for individualBlogComp component.
  late IndividualBlogCompModel individualBlogCompModel1;
  // Model for relatedBlogComp component.
  late RelatedBlogCompModel relatedBlogCompModel1;
  // Model for footerComp component.
  late FooterCompModel footerCompModel1;
  // Model for tabletHeaderComp component.
  late TabletHeaderCompModel tabletHeaderCompModel;
  // Model for individualBlogComp component.
  late IndividualBlogCompModel individualBlogCompModel2;
  // Model for relatedBlogComp component.
  late RelatedBlogCompModel relatedBlogCompModel2;
  // Model for footerComp component.
  late FooterCompModel footerCompModel2;
  // Model for desktopHeaderComp component.
  late DesktopHeaderCompModel desktopHeaderCompModel;
  // Model for individualBlogComp component.
  late IndividualBlogCompModel individualBlogCompModel3;
  // Model for relatedBlogComp component.
  late RelatedBlogCompModel relatedBlogCompModel3;
  // Model for footerComp component.
  late FooterCompModel footerCompModel3;
  // Model for whatsapStickyComp component.
  late WhatsapStickyCompModel whatsapStickyCompModel;
  // Model for sidebarComp component.
  late SidebarCompModel sidebarCompModel;

  @override
  void initState(BuildContext context) {
    mobileHeaderCompModel = createModel(context, () => MobileHeaderCompModel());
    individualBlogCompModel1 =
        createModel(context, () => IndividualBlogCompModel());
    relatedBlogCompModel1 = createModel(context, () => RelatedBlogCompModel());
    footerCompModel1 = createModel(context, () => FooterCompModel());
    tabletHeaderCompModel = createModel(context, () => TabletHeaderCompModel());
    individualBlogCompModel2 =
        createModel(context, () => IndividualBlogCompModel());
    relatedBlogCompModel2 = createModel(context, () => RelatedBlogCompModel());
    footerCompModel2 = createModel(context, () => FooterCompModel());
    desktopHeaderCompModel =
        createModel(context, () => DesktopHeaderCompModel());
    individualBlogCompModel3 =
        createModel(context, () => IndividualBlogCompModel());
    relatedBlogCompModel3 = createModel(context, () => RelatedBlogCompModel());
    footerCompModel3 = createModel(context, () => FooterCompModel());
    whatsapStickyCompModel =
        createModel(context, () => WhatsapStickyCompModel());
    sidebarCompModel = createModel(context, () => SidebarCompModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mobileHeaderCompModel.dispose();
    individualBlogCompModel1.dispose();
    relatedBlogCompModel1.dispose();
    footerCompModel1.dispose();
    tabletHeaderCompModel.dispose();
    individualBlogCompModel2.dispose();
    relatedBlogCompModel2.dispose();
    footerCompModel2.dispose();
    desktopHeaderCompModel.dispose();
    individualBlogCompModel3.dispose();
    relatedBlogCompModel3.dispose();
    footerCompModel3.dispose();
    whatsapStickyCompModel.dispose();
    sidebarCompModel.dispose();
  }
}
